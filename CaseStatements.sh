#!/bin/bash


#This script demonstrates the use of a while loop and a case statement in Bash to implement a simple interactive menu.
# Initialize a variable 'finished' to 0, which will be used to control the loop.
finished=0

# Start a while loop that will continue until 'finished' becomes 1.
while [ $finished -ne 1 ]
do
    # Display the prompt asking for the user's favorite Linux distribution.
    echo "What is your favourite distribution: "
    echo "1 - Ubuntu"
    echo "2 - Arch"
    echo "3 - Kali Linux"
    echo "4 - Mint"
    echo "5 - Something else"
    echo "6 - Exit"

    # Read the user's input into the 'distro' variable.
    read distro;

    # Start a case statement to handle different options based on the user's input.
    case $distro in 
        1) 
            echo "Great choice! Ubuntu is famous for servers and desktops."
            ;;
        2) 
            echo "Arch is a pretty good choice."
            ;;
        3) 
            echo "For Penetration Testing and Ethical Hacking, Kali Linux is a great option."
            ;;
        4) 
            echo "Mint is also popular for desktops and servers."
            ;;
        5) 
            echo "There are so many distributions out there."
            ;;
        6) 
            # If the user enters 6, set 'finished' to 1 to exit the loop.
            finished=1
            ;;
        *) 
            # If the user enters anything other than 1-6, display an error message.
            echo "You did not give a valid input. Please try again."
            ;;
    esac
done

# The loop ends when the user enters 6, and this message is displayed.
echo "Thank you for using the script."
