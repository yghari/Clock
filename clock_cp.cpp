#include <iostream>
#include <chrono>
#include <ctime>

using namespace std;

int main() {
    while(true) {
        // Get the current time
        auto current_time = chrono::system_clock::now();
        time_t current_time_t = chrono::system_clock::to_time_t(current_time);
        
        // Convert the time to a string and print it
        char str_time[100];
        ctime_s(str_time, sizeof str_time, &current_time_t);
        cout << str_time;
        
        // Wait for one second
        this_thread::sleep_for(chrono::seconds(1));
        
        // Clear the console
        system("cls");
    }
    return 0;
}

