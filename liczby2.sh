#!/bin/bash

# Open a persistent TCP connection
exec 3<>/dev/tcp/127.0.0.1/12345

for ((i=1; i<=50; i++)); do
  echo "$i" >&3  # Send data to the connection
  sleep 0.1
done

# Close the connection when the script exits
exec 3>&-
