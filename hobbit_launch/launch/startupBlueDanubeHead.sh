#!/bin/bash


#Hobbit PT2
#1) starte roscore at
#2) connect with pi: ssh pi@192.168.2.199
#pw: pi
#(augen starten automatisch)
#=> strg+c , ctrl+c 

#rosrun blue_owlpose owlpose.py


#rostopic echo /tf (anschaun)
#littledown_center
#up
#center
#down
#left
#center
#right
#to_turntable
#to_grasp

#rostopic pub /head/move std_msgs/String "center_right" -1

exit 0 
