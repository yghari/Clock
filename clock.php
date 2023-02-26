<?php
while (true) {
    // Get the current time
    $now = new DateTime();

    // Format the time as a string
    $timeString = $now->format('H:i:s');

    // Print the time to the console
    echo $timeString;

    // Wait for one second
    sleep(1);

    // Clear the console
    echo "\033[2K\r";
}

