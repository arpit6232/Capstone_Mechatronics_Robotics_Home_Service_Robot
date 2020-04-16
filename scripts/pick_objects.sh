#!/bin/sh
xterm -e " source devel/setup.bash "
xterm -e " roslaunch my_robot world.launch " &
sleep 5
xterm -e " source devel/setup.bash "
xterm -e " roslaunch my_robot amcl.launch " &
sleep 5
xterm -e " source devel/setup.bash "
xterm -e " roslaunch pick_objects double_objects_picking.launch" 

