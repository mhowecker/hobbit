#!/usr/bin/python
# -*- coding: utf-8 -*-

PKG = 'hobbit_smach'
NAME = 'ArmMove'
DEBUG = True

import roslib
roslib.load_manifest(PKG)
import rospy

from smach import Sequence, State
from uashh_smach.util import SleepState
from ArmControllerClientFunctions import ArmClientFunctions

arm = ArmClientFunctions('192.168.2.190')


def getArmAtPosition(arm, position='home'):
    status = arm.GetArmState()
    if position == 'home':
        if status.ArmAtHomePos:
            return True
    elif position == 'cwpos':
        if status.ArmAtCWPos:
            return True
    elif position == 'ccwpos':
        if status.ArmAtCCWPos:
            return True
    elif position == 'learn':
        if status.ArmAtLearningPos:
            return True
    elif position == 'pregrasp':
        if status.ArmAtPreGraspFromFloor:
            return True
    elif position == 'tray':
        if status.ArmAtTrayPos:
            return True
    elif position == 'empty_into_tray':
        if status.ArmAtTrayPos:
            return True
    else:
        return False


class SetMoveToLearningPos(State):
    """
    Move the arm to the turntable, grasp it and move to the Learning position.
    """
    def __init__(self):
        State.__init__(
            self,
            outcomes=['succeeded', 'failed', 'preempted']
        )

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        if not arm.GetArmIsEnabled():
            return 'failed'
        status = arm.SetMoveToLearningPos()
        if status[0] == 'MoveToLearningPos' and status[1] == 'COMMAND_OK':
            return 'succeeded'
        else:
            return 'failed'


class StoreTurntable(State):
    """
    """
    def __init__(self):
        State.__init__(
            self,
            outcomes=['succeeded', 'failed', 'preempted']
        )

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        if not arm.GetArmIsEnabled():
            return 'failed'
        status = arm.SetStoreTurnTable()
        if status[0] == 'StoreTurntable' and status[1] == 'COMMAND_OK':
            return 'succeeded'
        else:
            return 'failed'


class CheckArmReachedKnownPosition(State):
    """
    Check that the Arm has reached the specified predefined position.
    """
    def __init__(self, position):
        State.__init__(
            self,
            outcomes=['succeeded', 'failed', 'preempted']
        )
        self.position = position

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        if not arm.GetArmIsEnabled():
            return 'failed'
        if getArmAtPosition(arm, self.position):
            return 'succeeded'
        else:
            return 'failed'


class CheckArmIsNotMoving(State):
    """
    Check that the Arm has reached the specified predefined position.
    """
    def __init__(self):
        State.__init__(
            self,
            outcomes=['succeeded', 'failed', 'preempted']
        )

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        if not arm.GetArmIsEnabled():
            return 'failed'
        if arm.GetArmIsMoving():
            return 'failed'
        else:
            return 'succeeded'


class SetArmPosition(State):
    """
    Move the robotarm to a specified position
    """
    def __init__(self, position):
        State.__init__(
            self,
            outcomes=['succeeded', 'failed', 'preempted']
        )
        self.position = position

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        print(type(self.arm))
        print self.position
        print(self.arm.GetArmState)
        if self.position == 'home':
            status = self.arm.SetMoveToHomePos()
        elif self.position == 'learn':
            status = self.arm.SetMoveToLearningPos()
        elif self.position == 'tray':
            statu = self.arm.SetMoveToTrayPos()
        elif self.position == 'pregrasp':
            status = self.arm.SetMoveToPreGraspFromFloorPos()
        elif self.position == 'ccwpos':
            status = self.arm.SetTurnTurntableCCW()
        elif self.position == 'cwpos':
            status = self.arm.SetTurnTurntableCW()
        else:
            return 'failed'
        if status[1] == 'COMMAND_OK':
            return 'succeeded'
        else:
            return 'failed'


def goToTrayPosition():
    """
    Return a SMACH Sequence that will move the arm to the tray pose.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_TRAY_POSE',
                     SetArmPosition(position='empty_into_tray'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='empty_into_tray'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsNotMoving(),
                     transitions={'failed:' 'CHECK_ARM_IS_NOT_MOVING'})
    return seq


def moveToCW():
    """
    Return a SMACH Sequence that will return the turntable after the learning.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_CW',
                     SetArmPosition(position='cwpos'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='cwpos'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsNotMoving(),
                     transitions={'failed:' 'CHECK_ARM_IS_NOT_MOVING'})


def returnTurnTable():
    """
    Return a SMACH Sequence that will return the turntable after the learning.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_CW',
                     SetArmPosition(position='cwpos'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='cwpos'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsNotMoving(),
                     transitions={'failed:' 'CHECK_ARM_IS_NOT_MOVING'})
        Sequence.add('MOVE_ARM_STORE',
                     SetArmPosition(position='store'))
        Sequence.add('ARM_IN_HOME_POSE',
                     CheckArmReachedKnownPosition(position='home'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_TT_IS_NOT_MOVING', CheckArmIsNotMoving(),
                     transitions={'failed:' 'CHECK_TT_IS_NOT_MOVING'})
    return seq


def moveToCW():
    """
    Return a SMACH Sequence that will return the turntable after the learning.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_CW',
                     SetArmPosition(position='cwpos'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='cwpos'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsMoving())


def returnTurnTable():
    """
    Return a SMACH Sequence that will return the turntable after the learning.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_CW',
                     SetArmPosition(position='cwpos'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='cwpos'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsMoving())
        Sequence.add('MOVE_ARM_STORE',
                     SetArmPosition(position='store'))
        Sequence.add('ARM_IN_HOME_POSE',
                     CheckArmReachedKnownPosition(position='home'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_TT_IS_NOT_MOVING', CheckArmIsMoving())
    return seq


def moveToCW():
    """
    Return a SMACH Sequence that will return the turntable after the learning.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_CW',
                     SetArmPosition(position='cwpos'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='cwpos'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsMoving())


def returnTurnTable():
    """
    Return a SMACH Sequence that will return the turntable after the learning.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_CW',
                     SetArmPosition(position='cwpos'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='cwpos'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsMoving())
        Sequence.add('MOVE_ARM_STORE',
                     SetArmPosition(position='store'))
        Sequence.add('ARM_IN_HOME_POSE',
                     CheckArmReachedKnownPosition(position='home'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_TT_IS_NOT_MOVING', CheckArmIsMoving())
    return seq


def goToLearnPosition():
    """
    Return a SMACH Sequence that will move the arm to the learning pose.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_LEARNING_POSE',
                     SetArmPosition(position='learn'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='learn'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsNotMoving(),
                     transitions={'failed:' 'CHECK_ARM_IS_NOT_MOVING'})
        Sequence.add('ROTATE_TT_CCW',
                     SetArmPosition(position='ccwpos'))
        Sequence.add('TT_ROTATED',
                     CheckArmReachedKnownPosition(position='ccwposw'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_TT_IS_NOT_MOVING', CheckArmIsNotMoving(),
                     transitions={'failed:' 'CHECK_TT_IS_NOT_MOVING'})
    return seq


def goToHomePosition():
    """
    Return a SMACH Sequence that will move the arm to the learning pose.
    """

    seq = Sequence(
        outcomes=['succeeded', 'preempted', 'failed'],
        connector_outcome='succeeded'
    )

    with seq:
        Sequence.add('MOVE_ARM_TO_HOME',
                     SetArmPosition(position='home'))
        Sequence.add('ARM_POSE_REACHED',
                     CheckArmReachedKnownPosition(position='learn'),
                     transitions={'failed': 'ARM_POSE_REACHED'})
        Sequence.add('CHECK_ARM_IS_NOT_MOVING', CheckArmIsNotMoving(),
                     transitions={'failed:' 'CHECK_ARM_IS_NOT_MOVING'})
    return seq
