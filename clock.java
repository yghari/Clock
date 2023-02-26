import java.text.SimpleDateFormat;
import java.util.Date;

public class Clock {
  public static void main(String[] args) {
    while (true) {
      // Get the current time
      Date now = new Date();

      // Format the time as a string
      SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
      String timeString = formatter.format(now);

      // Print the time to the console
      System.out.println(timeString);

      // Wait for one second
      try {
        Thread.sleep(1000);
      } catch (InterruptedException e) {
        e.printStackTrace();
      }

      // Clear the console
      System.out.print("\033[H\033[2J");
      System.out.flush();
    }
  }
}

