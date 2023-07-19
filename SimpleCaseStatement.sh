#!/bin/bash


#This script demonstrates the use a case statement in Bash to implement a simple interactive menu.
# Display the prompt asking for the user's favorite Linux distribution.
echo "What is your favourite distribution: "
echo "1 - Ubuntu"
echo "2 - Arch"
echo "3 - Kali Linux"
echo "4 - Mint"
echo "5 - Something else"

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
    *) 
        # If the user enters anything other than 1-6, display an error message.
        echo "You did not give a valid input. Please try again."
        ;;
esac
