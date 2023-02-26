using System;

class Clock {
    static void Main() {
        while (true) {
            // Get the current time
            DateTime now = DateTime.Now;

            // Format the time as a string
            string timeString = now.ToString("HH:mm:ss");

            // Print the time to the console
            Console.WriteLine(timeString);

            // Wait for one second
            System.Threading.Thread.Sleep(1000);

            // Clear the console
            Console.Clear();
        }
    }
}

