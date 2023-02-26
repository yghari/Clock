#!/bin/bash

while true
do
    # Get the current time
    currentTime=$(date +"%T")

    # Print the time to the console
    echo -ne "$currentTime\r"

    # Wait for one second
    sleep 1

    # Clear the console
    tput cuu1
    tput el
done

