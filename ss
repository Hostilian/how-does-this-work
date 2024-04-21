import itertools
import os  # Import the os module for clearing the console
import sys
import time

# Define frames for the spinning mouse
FRAMES = [
    """
     \\
    (o>
    / \\
    """,
    """
     _\\_
    (o.o)
    / \\ 
    """,
    """
     /\\
    (o.o)
    (_\\_)
    """,
    """
     / \\
    (o.o)
     \\_/
    """
]

def clear_console():
    """Clear the console."""
    if sys.platform.startswith('win'):
        _ = os.system('cls')  # Clear the console on Windows using 'cls' command
    else:
        _ = os.system('clear')  # Clear the console on Unix-like systems using 'clear' command

def spin_mouse():
    """Animate the spinning mouse."""
    for frame in itertools.cycle(FRAMES):  # Iterate through frames indefinitely
        clear_console()  # Clear the console
        print(frame)  # Print the current frame
        time.sleep(0.2)  # Wait for a short duration before displaying the next frame

if __name__ == "__main__":
    try:
        spin_mouse()  # Start the spinning mouse animation
    except KeyboardInterrupt:
        print("\nSpinning mouse stopped.")  # Print a message when the user interrupts the animation with Ctrl+C
