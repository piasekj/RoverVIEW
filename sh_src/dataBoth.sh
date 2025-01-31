#!/bin/bash

cleanup() {
    echo "Stopping the data reading..."
    pkill -f "diff_drive"
    exit 0
}

./dataRight.sh &
./dataLeft.sh &

while true; do
    sleep 1
done
