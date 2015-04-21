#!/usr/bin/python
# -*- coding: utf-8 -*-

PREEMPT_TIMEOUT = 5
SERVER_TIMEOUT = 5

import rospy
import smach
import uashh_smach.util as util
import tf
import math

from hobbit_msgs.srv import SwitchVision, SwitchVisionRequest
from std_msgs.msg import String
from smach_ros import ServiceState, SimpleActionState
from mira_msgs.srv import UserNavMode, ObsNavMode
from nav_msgs.srv import GetPlan, GetPlanRequest
from geometry_msgs.msg import PoseStamped, Point, Quaternion
# from hobbit_smach.bcolors import bcolors
from rgbd_acquisition.msg import Person
from hobbit_msgs.srv import GetRooms
import hobbit_smach.hobbit_move_import as hobbit_move
import uashh_smach.platform.move_base as move_base
import hobbit_smach.head_move_import as head_move
from uashh_smach.util import SleepState, WaitForMsgState
from hobbit_msgs.srv import SetCloserStateRequest
from hobbit_msgs.srv import SwitchVision, SwitchVisionRequest, SetCloserState
from hobbit_msgs.msg import GeneralHobbitAction
import hobbit_smach.logging_import as log

def switch_vision_cb(ud, response):
    if response.result:

        return 'succeeded'
    else:
        return 'aborted'

def closer_cb(ud, goal):
    params=[]
    params.append(String(str(ud.person_z/1000)))
    params.append(String(str(-ud.person_x/1000)))
    goal = GeneralHobbitGoal(
        command=String('start'),
        parameters=params
    )
    return goal

def detectUser():
    sm = smach.StateMachine(
        outcomes=['succeeded', 'preempted', 'failed']
    )
    with sm:
        smach.StateMachine.add(
            'DETECTION',
            util.WaitForMsgState(
                '/persons',
                Person,
                userdetection_cb,
                timeout=1),
            transitions={'succeeded': 'succeeded',
                         'aborted': 'COUNTER',
                         'preempted': 'preempted'}
        )
        smach.StateMachine.add(
            'COUNTER',
            UserCounter(),
            transitions={'succeeded': 'DETECTION',
                         'aborted': 'failed',
                         'preempted': 'preempted'}
        )
        return sm

def msg_timer_sm():
    sm = smach.StateMachine(outcomes = ['succeeded','aborted','preempted'],
                      output_keys=['person_x', 'person_z'])

    def child_term_cb(outcome_map):
        print(outcome_map)
        return True

    def person_cb(msg, ud):
        print(msg)
        if (rospy.Time.now() - msg.stamp) > rospy.Duration(1):
            rospy.loginfo('Person data is too old. Ignore.')
            return False
        if msg.source == 6:
            #rospy.loginfo('Do not use this data')
            return False
        ud.person_x = msg.x
        ud.person_z = msg.z
        #rospy.loginfo("OK. Use it.")
        return True

    cc = smach.Concurrence(outcomes=['aborted', 'succeeded', 'preempted'],
                     default_outcome='aborted',
                     child_termination_cb=child_term_cb,
                     output_keys=['person_x', 'person_z'],
                     outcome_map={'succeeded': {'LISTENER': 'succeeded'},
                                  'aborted': {'TIMER': 'succeeded'}})
    with sm:
        smach.StateMachine.add(
            'GET_PERSON',
            WaitForMsgState(
                '/persons',
                Person,
                msg_cb=person_cb,
                timeout=3,
                output_keys=['user_pose', 'person_z', 'person_x']
            ),
            transitions={'succeeded': 'succeeded',
                         'aborted': 'GET_PERSON'}
        )
    with cc:
        smach.Concurrence.add('LISTENER', sm)
        smach.Concurrence.add('TIMER', SleepState(duration=3))
    return cc

class UserCounter(smach.State):
    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'preempted', 'aborted'])
        self.counter = 0
        self.limit = 10

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        print('Counter: %d' % self.counter)
        self.counter += 1
        if self.counter < self.limit:
            return 'succeeded'
        else:
            self.counter = 0
            return 'aborted'


class Init(smach.State):
    """
    Class to initialize certain parameters
    """

    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'canceled'],
            input_keys=['command'],
            output_keys=['social_role'])
        self.pub_obstacle = rospy.Publisher(
            '/headcam/active',
            String,
            queue_size=50)
        self.pub_face = rospy.Publisher(
            '/Hobbit/Emoticon', String,
            queue_size=50)
        self.pub_face.publish('EMO_NEUTRAL')

    def execute(self, ud):
        self.pub_face.publish('EMO_NEUTRAL')
        self.pub_obstacle.publish('active')
        if rospy.has_param('/hobbit/social_role'):
            ud.social_role = rospy.get_param('/hobbit/social_role')
        try:
            if ud.command.data == 'cancel':
                return 'canceled'
        except KeyError:
            pass
        return 'succeeded'


class CleanUp(smach.State):
    """
    Class for setting the result message and clean up persistent variables
    """

    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded'],
            input_keys=['command', 'visited_places'],
            output_keys=['result', 'command', 'visited_places'])
        self.pub_face = rospy.Publisher(
            '/Hobbit/Emoticon',
            String,
            queue_size=50)

    def execute(self, ud):
        self.pub_face.publish('EMO_SAD')
        ud.visited_places = []
        ud.result = String('user not detected')
        return 'succeeded'


class SetSuccess(smach.State):
    """
    Class for setting the success message in the actionlib result and clean
    up of persistent variables
    """

    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'preempted'],
            output_keys=['result', 'visited_places'])
        self.pub_face = rospy.Publisher(
            '/Hobbit/Emoticon',
            String,
            queue_size=50)

    def execute(self, ud):
        ud.visited_places = []
        self.pub_face.publish('EMO_HAPPY')
        if self.preempt_requested():
            ud.result = String('preempted')
            self.service_preempt()
            return 'preempted'
        ud.result = String('user detected')
        return 'succeeded'


class CleanPositions(smach.State):
    """
    Class for removing unneeded positions from the rooms.
    Only use the default 'user search' positions.
    Remove the waiting, 'object search' and recharge positions
    """

    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'preempted'],
            input_keys=['response', 'positions'],
            output_keys=['positions', 'plan'])

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        ud.positions = []
        for room in ud.response.rooms.rooms_vector:
            for position in room.places_vector:
                if 'default' in position.place_type:
                    ud.positions.append(
                        {'x': position.x,
                         'y': position.y,
                         'theta': position.theta,
                         'distance': 'None',
                         'room': room.room_name,
                         'place_name': position.place_name})
        ud.plan = None
        rospy.loginfo('CleanPositions: ' + str(len(ud.positions)))
        return 'succeeded'


class PlanPath(smach.State):
    """
    Class to determine the shortest path to all possible positions,
    starting in the users last known room
    """
    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'preempted', 'aborted'],
            input_keys=['positions', 'x', 'y', 'yaw'],
            output_keys=['goal_position_x', 'goal_position_y',
                         'goal_position_yaw'])
        self.pub_obstacle = rospy.Publisher(
            '/headcam/active',
            String,
            queue_size=50)
        self.getPlan = rospy.ServiceProxy(
            'make_plan',
            GetPlan,
            persistent=True)
        self.shortest_path = 99999.99
        self.index = 0
        self.first = True

    def reset(self, ud):
        self.shortest_path = 99999.99
        self.index = 0

    def execute(self, ud):
        # The next line of code is dangerous
        # This will disable the obstacle detection
        # self.pub_obstacle.publish('inactive')
        if self.preempt_requested():
            print 'Preempt requested:'
            self.service_preempt()
            self.getPlan.close()
            return 'preempted'
        if self.first:
            self.positions = ud.positions
            self.first = False

        robot_pose = get_pose_from_xytheta(ud.x, ud.y, ud.yaw)
        if len(self.positions) == 0:
            self.reset(ud)
            self.first = True
            rospy.loginfo('Abort because the list of self.positions is empty.')
            return 'aborted'
        rospy.loginfo('PlanPath: number of possible locations:'
                      + str(len(self.positions)))
        for index, position in enumerate(self.positions):
            rospy.loginfo('index of positions: '+str(index))
            end_pose = get_pose_from_xytheta(
                position['x'], position['y'], position['theta'])
            req = GetPlanRequest(robot_pose, end_pose, 0.01)

            try:
                resp = self.getPlan(req)
            except rospy.ServiceException:
                self.getPlan.close()
                return 'aborted'

            if resp.plan.poses:
                distance = calc_path_length(end_pose, resp.plan.poses)
                rospy.loginfo('Path length: ' + str(distance))
                if (distance < self.shortest_path):
                    self.index = index
                    self.shortest_path = distance
                    ud.goal_position_x = position['x']
                    ud.goal_position_y = position['y']
                    ud.goal_position_yaw = position['theta']
                    rospy.loginfo('Found shorter path')
                else:
                    rospy.loginfo('Another path is shorter')
                    pass
            else:
                rospy.loginfo('We did not receive a plan.')
                self.index = index
                ud.goal_position_x = position['x']
                ud.goal_position_y = position['y']
                ud.goal_position_yaw = position['theta']
                rospy.loginfo('Select random goal')
        try:
            rospy.loginfo('Trying to remove the position#: ' + str(self.index))
            del self.positions[self.index]
            rospy.loginfo('Successfully removed the position')
        except Exception as e:
            print(e)
            rospy.loginfo('All rooms visited')
            self.reset(ud)
            return 'aborted'
        rospy.loginfo('Moving to next position')
        self.reset(ud)
        return 'succeeded'


class Counter(smach.State):
    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'preempted', 'aborted'],
            input_keys=['counter'],
            output_keys=['counter'])

    def execute(self, ud):
        print('Counter: %d' % ud.counter)
        ud.counter += 1
        if ud.counter > 1000:
            return 'succeeded'
        else:
            ud.counter = 0
            return 'aborted'


def get_pose_from_xytheta(x, y, yaw):
    pose = PoseStamped()
    pose.header.frame_id = 'map'
    pose.pose.position = Point(x, y, 0.0)
    pose.pose.orientation =\
        Quaternion(*tf.transformations.quaternion_from_euler(
            0, 0, yaw))
    return pose


def calc_path_length(end_pose, poses):
    last = (end_pose.pose.position.x, end_pose.pose.position.y)
    distance = 0.0
    poses.reverse()
    for item in poses:
        dx = item.pose.position.x - last[0]
        dy = item.pose.position.y - last[1]
        distance = round(math.sqrt(dx**2 + dy**2) + distance, 2)
        last = (item.pose.position.x, item.pose.position.y)
    return distance


def userdetection_cb(msg, ud):
    # print bcolors.OKGREEN + 'received message: '
    # print msg
    # print bcolors.ENDC
    if 0.39 < msg.confidence <= 0.61:
        # print bcolors.OKGREEN + 'Face detected!' + bcolors.ENDC
        rospy.loginfo('Face detected!')
        return True
    elif msg.confidence > 0.61:
        # print bcolors.OKGREEN + 'Skeleton detected!' + bcolors.ENDC
        rospy.loginfo('Skeleton detected!')
        return True
    else:
        rospy.loginfo('NO USER')
        # print bcolors.FAIL + 'NO USER' + bcolors.ENDC
        return False


def get_detect_user():
    sm = smach.StateMachine(
        outcomes=['succeeded', 'aborted', 'preempted'],
        input_keys=['command'],
        output_keys=['result'])

    sm.userdata.result = String('started')
    sm.userdata.detection = False

    with sm:
        smach.StateMachine.add(
            'INIT',
            Init(),
            transitions={'succeeded': 'GET_ALL_POSITIONS',
                         'canceled': 'LOG_ABORT'}
        )
        # smach.StateMachine.add(
        #     'DOCK_CHECK',
        #     hobbit_move.undock_if_needed(),
        #     transitions={'succeeded': 'GET_ALL_POSITIONS',
        #                  'canceled': 'CLEAN_UP'}
        # )
        smach.StateMachine.add(
            'GET_ALL_POSITIONS',
            ServiceState('getRooms',
                         GetRooms,
                         response_key='response'),
            transitions={'succeeded': 'GET_ROBOT_POSE',
                         'aborted': 'LOG_ABORT'}
        )
        smach.StateMachine.add(
            'GET_ROBOT_POSE',
            move_base.ReadRobotPositionState(),
            transitions={'succeeded': 'CLEAN_POSITIONS'}
        )
        smach.StateMachine.add(
            'CLEAN_POSITIONS',
            CleanPositions(),
            transitions={'succeeded': 'PLAN_PATH'}
        )
        smach.StateMachine.add(
            'PLAN_PATH',
            PlanPath(),
            transitions={'succeeded': 'MOVE_BASE',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'LOG_ABORT'}
        )
        smach.StateMachine.add(
            'MOVE_BASE',
            hobbit_move.goToPose(),
            transitions={'succeeded': 'SWITCH_VISION',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'LOG_ABORT'},
            remapping={'x': 'goal_position_x',
                       'y': 'goal_position_y',
                       'yaw': 'goal_position_yaw'}
        )
        smach.StateMachine.add_auto(
            'SWITCH_VISION',
            ServiceState(
                '/vision_system/locateUser',
                SwitchVision,
                request=SwitchVisionRequest(dummyInput=True),
                response_cb=switch_vision_cb
            ),
            connector_outcomes=['succeeded', 'preempted', 'aborted']
        )
        smach.StateMachine.add(
            'PREPARE_STOP',
            ServiceState(
                '/user_nav_mode',
                UserNavMode
            ),
            transitions={'succeeded': 'MOVE_HEAD_UP',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'MOVE_HEAD_UP'}
        )
        smach.StateMachine.add(
            'MOVE_HEAD_UP',
            head_move.MoveTo(pose='littledown_center'),
            transitions={'succeeded': 'WAIT',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'WAIT'}
        )
        smach.StateMachine.add(
            'WAIT',
            util.SleepState(duration=0.1),
            transitions={'succeeded': 'USER_DETECTION'}
        )
        smach.StateMachine.add(
            'ROTATE',
            hobbit_move.MoveDiscrete(motion='Turn', value='355'),
            transitions={'succeeded': 'USER_DETECTION',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'USER_DETECTION'}
        )
        smach.StateMachine.add(
            'USER_DETECTION',
            msg_timer_sm(),
            transitions={'succeeded': 'STOP_ROTATION',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'STOP_ROTATION'}
        )
        smach.StateMachine.add(
            'STOP_ROTATION',
            hobbit_move.Stop(),
            transitions={'succeeded': 'PREPARE_MOVEMENT',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'PREPARE_MOVEMENT'}
        )
        smach.StateMachine.add(
            'PREPARE_MOVEMENT',
            ServiceState(
                '/obs_nav_mode',
                ObsNavMode
            ),
            transitions={'succeeded': 'PLAN_PATH',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'PLAN_PATH'}
        )
        smach.StateMachine.add(
            'CLOSER',
            SimpleActionState(
                'come_closer',
                GeneralHobbitAction,
                goal_cb=closer_cb,
                input_keys=['person_z', 'person_x'],
                preempt_timeout=rospy.Duration(PREEMPT_TIMEOUT),
                server_wait_timeout=rospy.Duration(SERVER_TIMEOUT)
            ),
            transitions={'succeeded': 'MOVED',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'LOG_ABORT'}
        )
        smach.StateMachine.add(
            'MOVED',
            ServiceState(
                '/came_closer/set_closer_state',
                SetCloserState,
                request=SetCloserStateRequest(state=True),
            ),
            transitions={'succeeded': 'LOG_SUCCESS',
                         'preempted': 'LOG_PREEMPT'}
        )
        smach.StateMachine.add(
            'CLEAN_UP',
            CleanUp(),
            transitions={'succeeded': 'preempted'}
        )
        smach.StateMachine.add(
            'LOG_PREEMPT',
            log.DoLogPreempt(scenario='Locate User'),
            transitions={'succeeded': 'preempted'}
        )
        smach.StateMachine.add(
            'LOG_ABORT',
            log.DoLogAborted(scenario='Locate User'),
            transitions={'succeeded': 'aborted'}
        )
        smach.StateMachine.add(
            'LOG_SUCCESS',
            log.DoLogSuccess(scenario='Locate User'),
            transitions={'succeeded': 'succeeded'}
        )
    return sm

if __name__ == '__main__':
    print("Do not call this directly. Import it into your node.")
