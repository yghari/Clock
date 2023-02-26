import time

while True:
    # Get the current time
    now = time.localtime()

    # Format the time as a string
    timeString = time.strftime("%H:%M:%S", now)

    # Print the time to the console
    print(timeString, end="", flush=True)

    # Wait for one second
    time.sleep(1)

    # Clear the console
    print("\r", end="", flush=True)

