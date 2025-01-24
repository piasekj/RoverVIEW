#!/bin/bash

# Ścieżka do pliku
output_file="output.txt"

# Tworzenie (lub wyczyszczenie) pliku
> "$output_file"

# Nadpisywanie pierwszej linii pliku wynikami z ROS
ros2 topic echo /diff_drive_controller_left/odom | \
awk '/linear:/ {getline; printf "%.6f\n", $2}' | \
while read -r line; do
    # Nadpisanie pierwszej linii w pliku
    sed -i "1s/.*/$line/" "$output_file"
done
