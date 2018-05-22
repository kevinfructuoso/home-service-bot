#!/bin/sh

#Launch turtlebot in the custom world
#xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/Worlds/big_U_world.world" &

#Launch my bot in the custom world
xterm -e " roslaunch slam_bot world.launch world_name:=/home/workspace/catkin_ws/src/Worlds/big_U_world.world" &

sleep 2

#Launch gmapping demo
xterm -e " roslaunch turtlebot_gazebo gmapping_demo.launch" &

#Launch RTAB Map for custom bot
#xterm -e "roslaunch slam_bot mapping.launch" &
sleep 2

#Launch turtlebot teleop
#xterm -e " roslaunch turtlebot_teleop keyboard_teleop.launch" &

#Launch custom bot teleop
xterm -e " roslaunch slam_bot teleop.launch" &
sleep 2

#Launch rviz
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch"
