# Rover Data Acquisition and Monitoring System

## Project Overview
This project focuses on developing a system for controlling a rover, monitoring its operation, and acquiring real-time data about its parameters. The system is implemented in **LabVIEW**, which provides intuitive tools for engineering applications such as data acquisition, system control, and data visualization.

The project serves as a model for applications in various scenarios, including autonomous vehicle prototyping, field experiments, and mobile system data analysis. It not only advances control and monitoring technology but also provides hands-on experience with mechatronic systems and LabVIEW.

## Project Goals
The primary objectives of this project include:
- **Rover Control** – Enabling the operator to control the rover's movement, including speed and direction.
- **Speed Monitoring and Visualization** – Displaying the rover's real-time speed on a dedicated user interface.
- **Operational Time Tracking** – Logging activation times and usage duration for performance analysis.

## System Architecture
The system follows a structured sequence of operations to ensure smooth and reliable performance:
1. **User Input** – The operator initiates the system through LabVIEW’s graphical interface.
2. **Command Execution** – A terminal script is triggered, sending control signals to the robotic system.
3. **Rover Movement Activation** – The real and simulated rover in Gazebo execute movement commands.
4. **Wheel Speed Acquisition** – The system reads real-time speed data from Gazebo.
5. **LabVIEW Data Visualization** – The acquired data is displayed as dynamic charts in LabVIEW.

## Technologies Used
The project integrates multiple technologies for efficient data acquisition and control:
- **ROS2 (Robot Operating System 2)** – Manages communication between the rover’s components.
- **LabVIEW** – Provides a graphical interface for control and monitoring.
- **Python** – Handles logic and integration with ROS2.
- **Gazebo** – Simulates rover movement and behavior in a virtual environment.
- **Bash Scripts** – Facilitates communication between LabVIEW and ROS2.

## How to Run the Project
To execute the system, follow these steps:
1. Launch the LabVIEW project:
   ```
   source /opt/ros/humble/setup.bash

   cd TrailBlazerML
   source install/local_setup.bash
   /RoverVIEW/RoverVIEW/RoverVIEW.lvproj
   ```
2. Start the Gazebo simulation:
   ```
   ros2 launch gazebo_viz launch_sim.launch.py
   ```
3. Test system functionalities:
   - Signal transmission to the rover.
   - Speed data acquisition from the rover's wheels.
   - Logging operational times and control actions.

## Future Improvements
- **Direct LabVIEW-ROS2 Integration** – Using specialized toolkits like *ROS for LabVIEW Toolkit*.
- **Advanced Data Analysis** – Implementing machine learning techniques for predictive maintenance.

## Conclusion
This project successfully integrates ROS2, LabVIEW, and simulation tools to develop a rover control and monitoring system. The modular approach ensures adaptability for future enhancements and applications in autonomous robotics.


### ROS movement commands for labview

D - 100:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```

W - 119:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --rate 100 /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```

A - 97:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```

S - 115:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --rate 100 /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```

E - 101:
```
/bin/bash -c 'source /opt/ros/humble/setup.bash; \
source /home/rafal/TrailblazerML/install/local_setup.bash; \
{ ros2 topic pub --rate 100 /diff_drive_controller_left/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" & \
ros2 topic pub --rate 100 /diff_drive_controller_right/cmd_vel_unstamped geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"; }'
```
