#!/bin/bash

DELAY_BETWEEN_STEPS="5"

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters, please provide the file name"
fi

source ~/.bashrc
source /opt/ros/hobbit_hydro/devel/setup.bash

rosnode kill places_objects&
sleep $DELAY_BETWEEN_STEPS
rosnode kill places_object&
sleep $DELAY_BETWEEN_STEPS


exit 0
