#!/bin/bash
#
#
#
#       PLEASE NOTE THAT THIS IS THE STARTUP SCRIPT FOR THE MODED INTERMEDIATE PT1 ROBOT
#                  BUT  WHICH ACTUALLY RUNS THE STACK OF THE PT2 ROBOT
#
#
#
#                    THIS IS ACTUALLY THE VERSION FOR THE ROBOT @ VIENNA
#
#
#
STARTDIR=`pwd`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
  
./startupHobbitPT1.sh
 
cd $STARTDIR

#
#
#
#       PLEASE NOTE THAT THIS IS THE STARTUP SCRIPT FOR THE MODED INTERMEDIATE PT1 ROBOT
#                  BUT  WHICH ACTUALLY RUNS THE STACK OF THE PT2 ROBOT
#
#
#
#                    THIS IS ACTUALLY THE VERSION FOR THE ROBOT @ VIENNA
#
#
#

exit $?
