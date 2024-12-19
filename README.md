# RoverVIEW

Rover path simulation using ROS2 and LabVIEW.

# launch gazebo

```
cd ~/TrailblazerML/
source install/setup.bash

ros2 launch gazebo_viz launch_sim.launch.py 
```

# controlling rover in labview

po wciśnięciu <u>Klawisza</u>
 wykonaj poniższą <u>Komende</u>
 w terminalu:


 A -
---

```
ros2 topic pub --once /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
```
---

W - 
---
```
(ros2 topic pub --once /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --once /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}")
```
---
S -
--- 
```
(ros2 topic pub --once /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --once /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}")
```
---
 D - 
---
```
ros2 topic pub --once /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
```
# to get data from gazebo

## left controller
```
ros2 topic echo /diff_drive_controller_left/odom | awk '/linear:/ {getline; print $2}'
```
## right controller
```
ros2 topic echo /diff_drive_controller_right/odom | awk '/linear:/ {getline; print $2}'
```

⚠️ **Warning:** Jak chcesz wysyłać dane cały czas bez kończenia procesu zmień 
```
--once
```

na

```
--rate 100
```

w każdej komendzie