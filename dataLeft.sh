#!/bin/bash

source /opt/ros/humble/setup.bash
source /home/szaravy/TrailblazerML/install/local_setup.bash

# Ścieżka do pliku wyjściowego
output_file="outputLeft.txt"

# Tworzenie (lub wyczyszczenie) pliku
> "$output_file"

# Odczyt danych z ROS i zapis ostatniej linii do pliku
ros2 topic echo /diff_drive_controller_left/odom | \
awk '/linear:/ {getline; printf "%.6f\n", $2}' | \
while read -r line; do
    # Nadpisanie zawartości pliku nową linią
    echo "$line" > "$output_file"
done

