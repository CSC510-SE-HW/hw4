#!/bin/bash
# This script kills the infinite.sh process running in the background

echo "Searching for the infinite.sh process..."
pid=$(pgrep -f infinite.sh)  # Find the process ID of infinite.sh

if [ ! -z "$pid" ]; then  # Check if the PID exists
    echo "Process found with PID: $pid. Terminating..."
    kill $pid
    echo "Process terminated."
else
    echo "No such process found."
fi


