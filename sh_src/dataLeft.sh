#!/bin/bash

user=$(whoami)
home_dir="/home/$user"
path_to_source="$home_dir/TrailblazerML/install/local_setup.bash"

source_cmd="source $path_to_source"

eval $source_cmd

source /opt/ros/humble/setup.bash
# source /home/rafal/TrailblazerML/install/local_setup.bash

# Ścieżka do pliku wyjściowego
output_file="$home_dir/RoverVIEW/data/outputLeft.txt"

# Tworzenie (lub wyczyszczenie) pliku
> "$output_file"

# Odczyt danych z ROS i zapis ostatniej linii do pliku
ros2 topic echo /diff_drive_controller_left/odom | \
awk '/linear:/ {getline; printf "%.6f\n", $2}' | \
while read -r line; do
    # Nadpisanie zawartości pliku nową linią
    echo "$line" > "$output_file"
done

