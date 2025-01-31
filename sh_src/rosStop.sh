#!/bin/bash

source /opt/ros/humble/setup.bash
source /home/rafal/TrailblazerML/install/local_setup.bash

pkill -f "cmd_vel_unstamped"


( ros2 topic pub --once /diff_drive_controller_left_labview/cmd_vel_unstamped geometry_msgs/Twist "{linear: {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --once /diff_drive_controller_right_labview/cmd_vel_unstamped geometry_msgs/Twist "{linear: {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}")

# Keep the script running until manually stopped
wait

