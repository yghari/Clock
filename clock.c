#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include<windows.h>
#include <unistd.h>

int main() {
  while (1) {
    time_t current_time;
    struct tm *time_info;
    char time_string[9];

    time(&current_time);
    time_info = localtime(&current_time);

    strftime(time_string, sizeof(time_string), "%H:%M:%S", time_info);
    printf("Current time: %s\n", time_string);

    // Wait for one second
    Sleep(1);
  }

  return 0;
}

//This code uses the time function to get the current time, the localtime function to convert it to a local time structure, and the strftime function to format the time as a string in the "hour:minute:second" format. It then prints the current time to the console and waits for one second using the sleep function. The while loop ensures that the clock keeps updating every second.
