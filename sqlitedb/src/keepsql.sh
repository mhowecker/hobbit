#!/bin/bash

source /localhome/demo/.bashrc

cd /opt/ros/hobbit_hydro/src/sqlitedb/src/
cp hobbit.db hobbit_${hobbit_id}_`date +%Y%m%d`.db
./sqlreset.py
