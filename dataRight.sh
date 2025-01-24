#!/bin/bash

# Open a persistent TCP connection
exec 3<>/dev/tcp/127.0.0.1/12345

# Source ROS setup files
source /opt/ros/humble/setup.bash
source /home/szaravy/TrailblazerML/install/local_setup.bash

# Publish ROS messages and redirect output to TCP socket
ros2 topic echo /diff_drive_controller_right/odom | awk '/linear:/ {getline; print $2}' | \
while read -r line; do 
    echo "$line" >&3
done

# Keep the script running until manually stopped
wait

# Close the connection when the script exits
exec 3>&-
