#!/bin/bash

DELAY_BETWEEN_STEPS="5"

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters, valid modes are learning,mapping,navigation"
fi

if [ "$1" == "mapping" ]
then
 echo "Mapping"
 killall -9 mira&
 sleep $DELAY_BETWEEN_STEPS
 killall -9 miracenter&
 sleep $DELAY_BETWEEN_STEPS
 rosnode kill interfaces_node&
 
 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/launch
 roslaunch startup_ros_nav.launch&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/resources
 mira mira_config_ros_nav.xml -p1234&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/resources
 miracenter mira_vis_config.xml&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/navigation
 roslaunch gmapping_hobbit.launch&

elif [ "$1" == "learning" ]
then
 echo "Learning"
 killall -9 mira&
 sleep $DELAY_BETWEEN_STEPS
 killall -9 miracenter&
 sleep $DELAY_BETWEEN_STEPS
 rosnode kill interfaces_node&
 sleep $DELAY_BETWEEN_STEPS
 rosnode kill slam_gmapping&
 
 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/launch
 roslaunch startup.launch&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/resources
 mira mira_config.xml -p1234&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/resources
 miracenter mira_vis_config.xml&
  
 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/places_interpretation/launch
 roslaunch startup.launch&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/get_current_room/launch
 roslaunch startup.launch&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/places_learning_gui/launch
 roslaunch startup.launch&

elif [ "$1" == "navigation" ]
then
 echo "Regular Startup"
 # bajo: regular startup does not need the following nodes
 # this is why they should be killed with rosnode kill
 rosnode kill places_interpretation&
 rosnode kill get_current_room&
 sleep $DELAY_BETWEEN_STEPS

 killall -9 mira&
 sleep $DELAY_BETWEEN_STEPS
 killall -9 miracenter&
 sleep $DELAY_BETWEEN_STEPS
 rosnode kill interfaces_node&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/launch
 roslaunch startup.launch&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/resources
 mira mira_config2.xml -p1234&

 sleep $DELAY_BETWEEN_STEPS
 cd /opt/ros/hobbit_hydro/src/interfaces_mira/resources
 miracenter mira_vis_config.xml&

fi


exit 0
