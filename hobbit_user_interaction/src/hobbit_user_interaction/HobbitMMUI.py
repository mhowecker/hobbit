#!/usr/bin/python
# -*- coding: utf-8 -*-

PKG = 'hobbit_user_interaction'
NAME = 'hobbit_mmui'

import roslib
roslib.load_manifest(PKG)
import smach

from std_msgs.msg import String
from hobbit_msgs import MMUIInterface as MMUI
import uashh_smach.util as util


class WaitforSoundEnd(util.WaitForMsgState):
    """
    Inherit from util.WaitForMsgState to wait
    for S_SAPIEND
    """

    def execute(self, ud):
        """
            Override execute() to check for S_SAPIEND
        """
        msg = self.waitForMsg()
        if msg is not None:
            print(msg)
            if msg == 'preempted':
                return 'preempted'
            # call callback if there is one
            if self.msg_cb is not None:
                cb_result = self.msg_cb(msg, ud)
                # check if callback wants to dictate output
                if cb_result is not None:
                    print('self.msg_cb is not None')
                    if cb_result:
                        return 'succeeded'
                    else:
                        return 'failed'
            if msg.event == 'S_SAPIEND':
                return 'succeeded'
            else:
                return 'aborted'
        else:
            return 'aborted'


class ShowMenu(smach.State):
    """
    Class to interact with the MMUI
    """
    def __init__(self, menu=None):
        smach.State.__init__(self,
                             outcomes=['succeeded', 'failed', 'preempted'],
                             input_keys=['menu'],
                             )
        self.menu = menu

    def execute(self, ud):
        if self.preempt_requested():
            ud.answer = String('preempted')
            self.service_preempt()
        menu = 'M_' + self.menu if self.menu is not None else None
        if not menu:
            return 'failed'
        mmui = MMUI.MMUIInterface()
        resp = mmui.GoToMenu(menu=menu)
        print(resp)
        # TODO: needs checkfor resp content
        if resp:
            return 'succeeded'
        else:
            return 'failed'


class AskYesNo(smach.State):
    """
    Class to interact with the MMUI
    """
    def __init__(self, question):
        smach.State.__init__(self,
                             outcomes=['yes', 'no', 'failed', 'preempted',
                                       'timeout', '3times'],
                             input_keys=['question'],
                             output_keys=['answer'])
        self.question = question
        self.timeout_count = 0

    def execute(self, ud):
        if self.preempt_requested():
            ud.answer = String('preempted')
            self.service_preempt()
            return 'preempted'
        print(self.timeout_count)
        if self.timeout_count > 2:
            return '3times'
        mmui = MMUI.MMUIInterface()
        resp = mmui.showMMUI_YESNO(text=self.question)
        if resp:
            for i, v in enumerate(resp.params):
                print i, v
                if v.name == 'result' and v.value == 'D_YES':
                    return 'yes'
                elif v.name == 'result' and v.value == 'D_NO':
                    return 'no'
                elif v.name == 'result' and v.value == 'D_CANCEL':
                    return 'yes'
                elif v.name == 'result' and v.value == 'D_TIMEOUT':
                    self.timeout_count += 1
                    return 'timeout'
                else:
                    return 'failed'
        else:
            return 'failed'


class ConfirmInfo(smach.State):
    """
    Class to interact with the MMUI
    """
    def __init__(self, info):
        smach.State.__init__(self,
                             outcomes=['succeeded', 'failed', 'preempted']
                             )
        self.info = info

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        mmui = MMUI.MMUIInterface()
        resp = mmui.showMMUI_OK(text=self.info)
        print(resp)
        # TODO: needs checkfor resp content
        if resp:
            return 'succeeded'
        else:
            return 'failed'


class ShowInfo(smach.State):
    """
    Class to interact with the MMUI
    """
    def __init__(self, info):
        smach.State.__init__(self,
                             outcomes=['succeeded', 'failed', 'preempted']
                             )
        self.info = info

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        mmui = MMUI.MMUIInterface()
        resp = mmui.showMMUI_Info(text=self.info)
        print(resp)
        # TODO: needs checkfor resp content
        if resp:
            return 'succeeded'
        else:
            return 'failed'


class CancelState(smach.State):
    """
    Class to interact with the MMUI
    This smach State will try to cancel all ongoing actions
    on the MMUI
    """
    def __init__(self):
        smach.State.__init__(self,
                             outcomes=['succeeded', 'failed', 'preempted'],
                             input_keys=['text'],
                             )

    def execute(self, ud):
        if self.preempt_requested():
            ud.answer = String('preempted')
            self.service_preempt()
        mmui = MMUI.MMUIInterface()
        resp = mmui.showMMUI_Info(text=ud.text)
        print(resp)
        # TODO: needs check for resp content
        if resp:
            return 'succeeded'
        else:
            return 'failed'


class ShowCalendar(smach.State):
    """
    Smach State class to show calendar entries based on the given timeframe
    and categories.
    """
    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['failed', 'succeeded', 'preempted'],
            input_keys=['timeframe', 'categories']
        )

    def execute(self, ud):
        if self.preempt_requested():
            ud.answer = String('preempted')
            self.service_preempt()
        mmui = MMUI.MMUIInterface()
        resp = mmui.showMMUI_Calendar(timespan=ud.timeframe, cat=ud.categories)
        print(resp)
        if resp[0].value == 'D_OK':
            return 'succeeded'
        elif resp[0].value == 'D_CANCEL':
            return 'failed'
        elif resp[0].value == 'D_TIMEOUT':
            return 'failed'
        else:
            return 'failed'


class AskForCmd(smach.State):
    """
    Class to interact with the MMUI
    """
    def __init__(self):
        smach.State.__init__(self, outcomes=['succeeded', 'failed'],
                             input_keys=['question'])

    def execute(self, ud):
        resp = MMUI.showMMUI_NAME(ud.question)
        if resp:
            return 'succeeded'
        else:
            return 'failed'


class CallEmergency(smach.State):
    """
    Class to start the Voip-call to emergency personal
    """
    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'preempted']
        )

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        MMUI.sendMMUI_Function('F_CALLSOS')
        return 'succeeded'


class CallEnded(smach.State):
    """
    Call has ended, check if we have to hang up.
    """
    def __init__(self):
        smach.State.__init__(
            self,
            outcomes=['succeeded', 'preempted'],
            input_keys=['call_state']
        )

    def execute(self, ud):
        if self.preempt_requested():
            self.service_preempt()
            return 'preempted'
        if ud.call_state.upper() == 'B_STOPSOS'\
                or ud.call_state.upper() == 'B_ENDSOS':
            return 'succeeded'
        elif ud.call_state.upper() == 'E_CALLCONFIRMED':
            MMUI.sendMMUI_Function('F_ENDCALL')
            return 'succeeded'


if __name__ == '__main__':
    print('You should not call this directly. Import the needed classes')
    mmui = MMUI.MMUIInterface()
