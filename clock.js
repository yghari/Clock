function updateTime() {
  // Get the current time
  const now = new Date();

  // Format the time as a string
  const hours = now.getHours().toString().padStart(2, '0');
  const minutes = now.getMinutes().toString().padStart(2, '0');
  const seconds = now.getSeconds().toString().padStart(2, '0');
  const timeString = `${hours}:${minutes}:${seconds}`;

  // Update the clock element
  const clockElement = document.getElementById('clock');
  clockElement.textContent = timeString;
}

// Update the clock every second
setInterval(updateTime, 1000);

