#!/bin/sh
xterm  -e  " source /opt/ros/kinetic/setup.bash; roscore" & 
sleep 5
xterm -e " cd catkin_ws/ " 
xterm -e " catkin_make " 
xterm -e " source devel/setup.bash " 
# xterm -e " roslaunch my_robot warehouse_world.launch " &
xterm -e " roslaunch my_robot world.launch " &
sleep 5
xterm -e " source devel/setup.bash " 
# xterm -e " roslaunch my_robot warehouse_amcl.launch " &
xterm -e " roslaunch my_robot amcl.launch " &
sleep 5
xterm -e " source devel/setup.bash " 
xterm -e " roslaunch pick_objects double_objects_picking.launch " &
sleep 5
xterm -e " source devel/setup.bash " 
xterm -e " rosrun add_markers add_markers_odom"
