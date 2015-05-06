#!/usr/bin/python
# -*- coding: utf-8 -*-

steps = 12
PREEMPT_TIMEOUT = 5
SERVER_TIMEOUT = 5

import rospy
import uashh_smach.util as util
import uashh_smach.platform.move_base as move_base
import tf
import math

from std_msgs.msg import String
from hobbit_msgs.srv import *
from hobbit_msgs.msg import *
from hobbit_msgs.srv import *
from smach import Sequence, Iterator, StateMachine, State, Concurrence
from smach_ros import ServiceState, SimpleActionState
from nav_msgs.srv import GetPlan, GetPlanRequest
from geometry_msgs.msg import PoseStamped, Point, Quaternion
import hobbit_smach.hobbit_move_import as hobbit_move
from hobbit_smach import bcolors
from rgbd_acquisition.msg import Person
import hobbit_smach.head_move_import as head_move
from uashh_smach.util import SleepState, WaitForMsgState
from hobbit_msgs.srv import SetCloserStateRequest
from hobbit_msgs.srv import SwitchVision, SwitchVisionRequest, SetCloserState
from hobbit_msgs.msg import GeneralHobbitAction
import hobbit_smach.logging_import as log
import hobbit_smach.speech_output_import as speech_output
from hobbit_user_interaction import HobbitMMUI


def switch_vision_cb(ud, response):
    if response.result:
        return 'succeeded'
    else:
        return 'aborted'

def detectUser():
    sm = StateMachine(
        outcomes=['succeeded', 'preempted', 'failed']
    )
    with sm:
        StateMachine.add(
            'ROTATE',
            hobbit_move.rotateRobot(angle=360/steps, frame='/map'),
            transitions={'succeeded': 'DETECTION',
                         'aborted': 'failed',
                         'preempted': 'preempted'}
        )
        StateMachine.add(
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
        StateMachine.add(
            'COUNTER',
            UserCounter(),
            transitions={'succeeded': 'ROTATE',
                         'aborted': 'failed',
                         'preempted': 'preempted'}
        )
        return sm

def closer_cb(ud, goal):
    params=[]
    params.append(String(str(ud.person_z/1000)))
    params.append(String(str(-ud.person_x/1000)))
    goal = GeneralHobbitGoal(
        command=String('start'),
        parameters=params
    )
    return goal

def msg_timer_sm():
    sm = StateMachine(outcomes = ['succeeded','aborted','preempted'],
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
            #print('Do not use this data')
            return False
        ud.person_x = msg.x
        ud.person_z = msg.z
        #print("OK. Use it.")
        return True

    cc = Concurrence(outcomes=['aborted', 'succeeded', 'preempted'],
                     default_outcome='aborted',
                     child_termination_cb=child_term_cb,
                     output_keys=['person_x', 'person_z'],
                     outcome_map={'succeeded': {'LISTENER': 'succeeded'},
                                  'aborted': {'TIMER': 'succeeded'}})
    with sm:
        StateMachine.add(
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
        Concurrence.add('LISTENER', sm)
        Concurrence.add('TIMER', SleepState(duration=3))
    return cc

class UserCounter(State):
    def __init__(self):
        State.__init__(
            self,
            outcomes=['succeeded', 'preempted', 'aborted'])
        self.counter = 0

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        print('Counter: %d' % self.counter)
        self.counter += 1
        if self.counter < steps:
            return 'succeeded'
        else:
            self.counter = 0
            return 'aborted'

class Init(State):
    """
    Class to initialize certain parameters
    """

    def __init__(self):
        State.__init__(
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
        if ud.command.data == 'cancel':
            return 'canceled'
        return 'succeeded'


class CleanUp(State):
    """
    Class for setting the result message and clean up persistent variables
    """

    def __init__(self):
        State.__init__(
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


class SetSuccess(State):
    """
    Class for setting the success message in the actionlib result and clean
    up of persistent variables
    """

    def __init__(self):
        State.__init__(
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


class CleanPositions(State):
    """
    Class for removing unneeded positions from the rooms.
    Only use the default 'user search' positions.
    Remove the waiting, 'object search' and recharge positions
    """

    def __init__(self):
        State.__init__(
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
                if 'default' in position.place_name:
                    ud.positions.append(
                        {'x': position.x,
                         'y': position.y,
                         'theta': position.theta,
                         'room': room.room_name,
                         'distance': 'None',
                         'place_name': position.place_name,
                         'penalty': 1})
        ud.plan = None
        return 'succeeded'


class PlanPath(State):
    """
    Class to determine the shortest path to all possible positions,
    starting in the users last known room
    """
    def __init__(self):
        State.__init__(
            self,
            outcomes=['success', 'preempted', 'failure'],
            input_keys=['pose', 'positions', 'detection', 'plan',
                        'users_current_room', 'visited_places',
                        'robot_end_pose', 'x', 'y', 'yaw'],
            output_keys=['detection', 'visited_places', 'robot_end_pose',
                         'goal_position_x', 'goal_position_y',
                         'goal_position_yaw'])
        self.positions = []
        self.pub_obstacle = rospy.Publisher(
            '/headcam/active',
            String,
            queue_size=50)
        self.getPlan = rospy.ServiceProxy(
            'make_plan',
            GetPlan,
            persistent=True)
        self.shortest_path = 99999.99

    def execute(self, ud):
        # The next line of code is dangerous
        # This will disable the obstacle detection
        # self.pub_obstacle.publish('inactive')
        self.shortest_path = 99999.99
        if self.preempt_requested():
            print 'Preempt requested:'
            self.service_preempt()
            self.getPlan.close()
            return 'preempted'
        try:
            if ud.visited_places[0] is None:
                pass
            else:
                print ud.visited_places
        except:
            ud.visited_places = []

        for position in ud.positions:
            if position['room'] in ud.users_current_room.room_name:
                print 'User is in %s . Let\'s start there.' % position['room']
                position['penalty'] = 0

            print position['room'], position['place_name']
            robot_pose = PoseStamped()
            robot_pose.header.frame_id = 'map'
            robot_pose.pose.position = Point(ud.x, ud.y, 0.0)
            robot_pose.pose.orientation =\
                Quaternion(*tf.transformations.quaternion_from_euler(
                    0, 0, ud.yaw))
            end_pose = PoseStamped()
            end_pose.header.frame_id = 'map'
            end_pose.pose.position = Point(position['x'], position['y'], 0.0)
            end_pose.pose.orientation =\
                Quaternion(*tf.transformations.quaternion_from_euler(
                    0, 0, position['theta']))
            req = GetPlanRequest(robot_pose, end_pose, 0.01)
            # print req

            print('ud.visited_places')
            print(ud.visited_places)
            for visited in ud.visited_places:
                if position['room'] == visited['room']:
                    if position['place_name'] == visited['place']:
                        print bcolors.FAIL +\
                            'Remove \'%s\' in %s from list of search locations.\
                            ' % (position['place_name'],
                                 position['room'])\
                            + bcolors.ENDC
                        position['penalty'] = 2
                        print position['penalty']
            try:
                resp = self.getPlan(req)
                # print req
            except ServiceException:
                self.getPlan.close()
                return 'failure'

            if resp.plan.poses:
                print bcolors.OKBLUE + 'Plan received'
                print str(len(resp.plan.poses)) + bcolors.ENDC
                # calculate distance
                last = (end_pose.pose.position.x, end_pose.pose.position.y)
                distance = 0.0
                resp.plan.poses.reverse()
                for item in resp.plan.poses:
                    dx = item.pose.position.x - last[0]
                    dy = item.pose.position.y - last[1]
                    distance = round(math.sqrt(dx**2 + dy**2) + distance, 2)
                    last = (item.pose.position.x, item.pose.position.y)
                print bcolors.WARNING + 'distance to %s in %s is %.2f meter'\
                    % (position['place_name'],
                       position['room'], distance) \
                    + bcolors.ENDC
                if (distance < self.shortest_path) and position['penalty'] < 2:
                    self.shortest_path = distance
                    print bcolors.OKGREEN + \
                        'shortest path is now to the %s in the %s'\
                        % (position['place_name'], position['room'])\
                        + bcolors.ENDC
                    ud.robot_end_pose = {'room': position['room'],
                                         'place': position['place_name'],
                                         'distance': distance,
                                         'penalty': position['penalty']}
                    ud.goal_position_x = position['x']
                    ud.goal_position_y = position['y']
                    ud.goal_position_yaw = position['theta']
                    print(position['theta'])
                else:
                    pass
        print('len(ud.visited_places) %d' % len(ud.visited_places))
        print('len(ud.positions) %d' % len(ud.positions))
        if len(ud.visited_places) == len(ud.positions):
            print bcolors.FAIL+'Visited all positions'+bcolors.ENDC
            return 'failure'
        else:
            ud.visited_places.append(ud.robot_end_pose)
            print(ud.robot_end_pose)
            return 'success'


class Rotate180(State):
    def __init__(self):
        State.__init__(
            self,
            outcomes=['succeeded', 'preempted', 'failure'])
        self.pub = rospy.Publisher(
            '/DiscreteMotionCmd',
            String,
            queue_size=50)

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        rospy.sleep(1.0)
        self.pub.publish(String('Turn 180.0'))
        print bcolors.OKGREEN + 'Should start rotating now...' + bcolors.ENDC
        return 'succeeded'


class Counter(State):
    def __init__(self):
        State.__init__(
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


def rotating_cb(msg, ud):
    print bcolors.WARNING +\
        'ROTATING: received message: /DiscreteMotionState '\
        + bcolors.ENDC
    # print msg.data
    if (msg.data == 'Turning'):
        print bcolors.WARNING +\
            'Now we are actually moving.'\
            + bcolors.ENDC
        rospy.sleep(0.5)
        return True
    else:
        return False


def rotation_cb(msg, ud):
    print bcolors.WARNING + 'ROTATION FINISHED?:\
        received message: /DiscreteMotionState ' + bcolors.ENDC
    # print bcolors.FAIL
    # print msg.data
    # print bcolors.ENDC
    if (msg.data == 'Stopping') or (msg.data == 'Idle'):
        print bcolors.OKGREEN +\
            '180 degree rotation completed. User not detected'\
            + bcolors.ENDC
        return True
    else:
        return False


def goal_reached_cb(msg, ud):
    print bcolors.WARNING +\
        'received message: /goal_status'\
        + bcolors.ENDC
    # print msg.data
    if (msg.data == 'reached') or (msg.data == 'idle'):
        print bcolors.OKGREEN +\
            'position reached. Start rotation.'\
            + bcolors.ENDC
        return True
    else:
        return False


def userdetection_cb(msg, ud):
    print bcolors.OKGREEN + 'received message: '
    print msg
    print bcolors.ENDC
    if 0.39 < msg.confidence <= 0.61:
        print bcolors.OKGREEN + 'Face detected!' + bcolors.ENDC
        rospy.loginfo('The face detection is not good enough to rely on.')
        return False
    elif msg.confidence > 0.61:
        print bcolors.OKGREEN + 'Skeleton detected!' + bcolors.ENDC
        return True
    else:
        print bcolors.FAIL + 'NO USER' + bcolors.ENDC
        return False


def child_term_cb(outcome_map):
    if outcome_map['DETECT_USER'] == 'succeeded'\
            or outcome_map['ROTATE'] == 'succeeded':
        print('child_term_cb: succeeded')
        return True
    else:
        return False


def out_cb(outcome_map):
    if outcome_map['DETECT_USER'] == 'succeeded':
        print('out_cb: succeeded')
        return 'succeeded'
    else:
        return 'failed'


def get_detect_user():
    sm = StateMachine(
        outcomes=['succeeded', 'aborted', 'preempted'],
        input_keys=['command'],
        output_keys=['result'])

    sm.userdata.result = String('started')
    sm.userdata.detection = False

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'aborted'],
        connector_outcome='aborted'
    )
    seq.userdata.counter = 0

    with seq:
        Sequence.add('USER_DETECTOR',
                     util.WaitForMsgState(
                         'persons',
                         Person,
                         userdetection_cb,
                         timeout=1)
                     )
        Sequence.add('COUNTER',
                     Counter(),
                     transitions={'succeeded': 'succeeded',
                                  'aborted': 'USER_DETECTOR'}
                     )

    with sm:
        StateMachine.add(
            'INIT',
            Init(),
            transitions={'succeeded': 'GET_ALL_POSITIONS',
                         'canceled': 'LOG_ABORT'}
        )
        StateMachine.add(
            'GET_ALL_POSITIONS',
            ServiceState('getRooms',
                         GetRooms,
                         response_key='response'),
            transitions={'succeeded': 'GET_ROBOT_POSE',
                         'aborted': 'LOG_ABORT'}
        )
        StateMachine.add(
            'GET_ROBOT_POSE',
            move_base.ReadRobotPositionState(),
            transitions={'succeeded': 'CLEAN_POSITIONS'}
        )
        StateMachine.add(
            'CLEAN_POSITIONS',
            CleanPositions(),
            transitions={'succeeded': 'GET_CURRENT_ROOM'}
        )
        StateMachine.add(
            'GET_CURRENT_ROOM',
            ServiceState('get_robots_current_room',
                         GetName,
                         response_key='robots_room_name'),
            transitions={'succeeded': 'GET_USERS_ROOM',
                         'aborted': 'LOG_ABORT'}
        )
        StateMachine.add(
            'GET_USERS_ROOM',
            ServiceState('get_users_current_room',
                         GetUsersCurrentRoom,
                         response_key='users_current_room'),
            transitions={'succeeded': 'PLAN_PATH',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'LOG_ABORT'}
        )
        StateMachine.add(
            'PLAN_PATH',
            PlanPath(),
            transitions={'success': 'MOVE_HEAD_DOWN',
                         'preempted': 'LOG_PREEMPT',
                         'failure': 'LOG_ABORT'}
        )
        StateMachine.add(
            'MOVE_HEAD_DOWN',
            head_move.MoveTo(pose='down_center'),
            transitions={'succeeded': 'MOVE_BASE',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'MOVE_BASE'}
        )
        StateMachine.add(
            'MOVE_BASE',
            hobbit_move.goToPose(),
            transitions={'succeeded': 'MOVE_HEAD_UP',
                         'preempted': 'CLEAN_UP',
                         'aborted': 'CLEAN_UP'},
            remapping={'x': 'goal_position_x',
                       'y': 'goal_position_y',
                       'yaw': 'goal_position_yaw'}
        )
        StateMachine.add(
            'SWITCH_VISION',
            ServiceState(
                '/vision_system/comeCloser',
                SwitchVision,
                request=SwitchVisionRequest(dummyInput=True),
                response_cb=switch_vision_cb
            )
        )
        StateMachine.add(
            'MOVE_HEAD_UP',
            head_move.MoveTo(pose='littledown_center'),
            transitions={'succeeded': 'WAIT',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'WAIT'}
        )
        StateMachine.add(
            'WAIT',
            util.SleepState(duration=1),
            transitions={'succeeded': 'USER_DETECTION'}
        )
        StateMachine.add(
            'USER_DETECTION',
            msg_timer_sm(),
            transitions={'succeeded': 'CLOSER',
                         'preempted': 'LOG_PREEMPT',
                         'aborted': 'PLAN_PATH'}
        )
        StateMachine.add(
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
        StateMachine.add(
            'MOVED',
            ServiceState(
                '/came_closer/set_closer_state',
                SetCloserState,
                request=SetCloserStateRequest(state=True),
            ),
            transitions={'succeeded': 'LOG_SUCCESS',
                         'preempted': 'LOG_PREEMPT'}
        )
        StateMachine.add(
            'CLEAN_UP',
            CleanUp(),
            transitions={'succeeded': 'preempted'}
        )
        StateMachine.add(
            'LOG_PREEMPT',
            log.DoLogPreempt(scenario='Locate User'),
            transitions={'succeeded': 'preempted'}
        )
        StateMachine.add(
            'LOG_ABORT',
            log.DoLogAborted(scenario='Locate User'),
            transitions={'succeeded': 'aborted'}
        )
        StateMachine.add(
            'LOG_SUCCESS',
            log.DoLogSuccess(scenario='Locate User'),
            transitions={'succeeded': 'succeeded'}
        )
    return sm

def call_for_the_user():
    sm = StateMachine(outcomes = ['succeeded','aborted','preempted'])
    first_loop = StateMachine(outcomes = ['succeeded','aborted','preempted'])
    second_loop = StateMachine(outcomes = ['succeeded','aborted','preempted'])
    first_it = Iterator(outcomes = ['succeeded', 'preempted', 'aborted'],
                              input_keys = [],
                              output_keys = [],
                              it = lambda: range(0, 3),
                              it_label = 'index',
                              exhausted_outcome = 'succeeded')
    second_it = Iterator(outcomes = ['succeeded', 'preempted', 'aborted'],
                              input_keys = [],
                              output_keys = [],
                              it = lambda: range(0, 3),
                              it_label = 'index',
                              exhausted_outcome = 'succeeded')
    cc1 = Concurrence(outcomes=['aborted', 'succeeded', 'preempted'],
                             default_outcome='aborted',
                             child_termination_cb=child_term_cb,
                             outcome_cb=out_cb
    )

    def child_term_cb(outcome_map):
                rospy.loginfo('cc1: child_term_cb: ')
                rospy.loginfo(str(outcome_map))
                return True
            def out_cb(outcome_map):
                rospy.loginfo(str(outcome_map))
                if outcome_map['YES_NO'] == 'yes':
                    return 'succeeded'
                elif outcome_map['WAIT'] == 'succeeded':
                    return 'succeeded'
                elif outcome_map['WAIT'] == 'aborted':
                    return 'aborted'
                elif outcome_map['YES_NO'] in ['no', 'timeout', '3times', 'failed']:
                    return 'aborted'
                else:
                    return 'preempted'
    with first_it:
        Iterator.set_contained_state(
            'FIRST_SM',
            first_loop,
            loop_outcomes = ['succeeded']
        )

    with cc1:
        Concurrence.add(
            'YES_NO',
            HobbitMMUI.AskYesNo(question='T_HM_CallUser'),
            )
        Concurrence.add(
            'WAIT',
            util.SleepState(duration=20)
        )

    with first_loop:
        StateMachine.add_auto(
            'SET_VOLUME',
            HobbitMMUI.SetVolumeLouder,
            connector_outcomes=['succeeded', 'preempted']
        )

        StateMachine.add(
            'CALL_USER',
            cc1,
            transitions={'succeeded': 'WAIT_15SEC',
                         'aborted': 'WAIT_15SEC',
                         'preempted': 'preempted'}
        )
        StateMachine.add(
            'WAIT_15SEC',
            util.SleepState(duration=15)
        )

    with second_it:
        Iterator.set_contained_state(
            'SECOND_SM',
            second_loop,
            loop_outcomes = ['succeeded']
        )
    with sm:
        StateMachine.add(
            'CALL_FOR_THE_USER',
            first_it,
            transitions={'succeeded':'RESET_VOLUME',
                         'preempted':'preempted',
                         'aborted':'aborted'}
        )
        StateMachine.add(
            'RESET_VOLUME',
            HobbitMMUI.SetAbsVolume(volume='30'),
            transitions={'succeeded':'succeeded',
                         'preempted':'preempted',
                         'aborted':'aborted'}
        )
    return sm




if __name__ == '__main__':
    print("Do not call this directly. Import it into your node.")
