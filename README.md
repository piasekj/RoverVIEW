# RoverVIEW

Rover path simulation using ROS2 and LabVIEW.



## DUMP

#### todo.md
#### TODO summarized from VIs

- [ ] fix data reading initialization so it starts directly from labview
- [X] make the stop button stop the whole program
- [X] fix so that pkill works when quitting the program
- [ ] error handling in state machine (for data read initialization files)

#### gazeboLaunch.md

source /opt/ros/humble/setup.bash

cd TrailBlazerML
source install/local_setup.bash

ros2 launch gazebo_viz launch_sim.launch.py


pozmieniane sciezki absolutne w labview - już nie trzeba
pozmieniane sciezki absolutne w plikach dataLeft.sh i dataRight.sh



#### rosMovement.md
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


