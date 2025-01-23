#!/bin/bash

# Open a persistent TCP connection
exec 3<>/dev/tcp/127.0.0.1/12345

source /opt/ros/humble/setup.bash
source /home/rafal/TrailblazerML/install/local_setup.bash

pkill -f "diff_drive"

ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"

# Keep the script running until manually stopped
wait

# Close the connection when the script exits
exec 3>&-
