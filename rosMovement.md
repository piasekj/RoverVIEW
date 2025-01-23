# ROS movement commands

100:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```

119:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --rate 100 /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```

97:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```

115:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --rate 100 /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```



## Test scripts


liczby2.sh in one bash command:
```
bash  -c 'exec 3<>/dev/tcp/127.0.0.1/12345; for ((i=1; i<=50; i++)); do echo "$i" >&3; sleep 0.1; done; exec 3>&- &'
```

pgrep for killing process:
```
bash -c 'pgrep -f "exec 3<>/dev/tcp/127.0.0.1/12345" | head -n 1 &'
```


liczby2.sh as a script:
```
bash -c "/home/szaravy/ds/RoverVIEW/liczby2.sh &"
```


pgrep for killing process:
```
bash -c 'pgrep -f "/home/szaravy/ds/RoverVIEW/liczby2.sh" &'
```
