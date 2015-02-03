#!/usr/bin/env python

NAME = 'run_pickup'
import roslib
roslib.load_manifest('hobbit_smach')
import rospy
import actionlib

from std_msgs.msg import String
from hobbit_msgs.msg import GeneralHobbitAction, GeneralHobbitGoal


def start_action():
    print "start client"
    #client = actionlib.SimpleActionClient('pickup_object_grasp_only', GeneralHobbitAction)
    #client = actionlib.SimpleActionClient('pickup_grasp_check_only', GeneralHobbitAction)
    client = actionlib.SimpleActionClient('pickup', GeneralHobbitAction)
    client.wait_for_server()
    print "connected to server"
    goal = GeneralHobbitGoal(
        command=String('pickup'))
    print goal
    print "send goal"
    client.send_goal(goal)
    print "waiting for result"
    client.wait_for_result()

    return client.get_result()

if __name__ == '__main__':
        try:
	    print('node %s started' % NAME)
            rospy.init_node(NAME)
            result = start_action()
            print ('Result:', result)
        except rospy.ROSInterruptException:
            print('program interrupted before completion')
