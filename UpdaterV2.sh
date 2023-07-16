#!/bin/bash

# This script updates the system based on the Linux distribution.
# It demonstrates the concept of data streams, specifically standard input (stdin) and standard error (stderr).
# make temporary directory for demonstration

release_file=/etc/os-release
logfile=/home/tayyab/logs/updater.log
errorlogfile=/home/tayyab/logs_error.log

check_exit_code() {
    if [ $? -ne 0 ]
    then    
        echo "An error occured. Please check $errorlogfile"
    
    else
        echo "Process successfull. Check $logfile for more info. Thanks."
    fi
}

# Check if the system is based on Arch Linux
if grep -q "Arch" $release_file; then
    echo "This host is based on Arch Linux"
    echo "Running command to update...."
    
    # Redirect standard output (stdout) to $logfile and standard error (stderr) to $errorlogfile
    sudo pacman -Syu 1>>$logfile 2>>$errorlogfile
    check_exit_code
    
fi

# Check if the system is based on Ubuntu
if grep -q "Ubuntu" $release_file; then
    echo "This host is based on Ubuntu"
    echo -n "Do you want to update the system? (y/n) "
    read ask_user
    
    if [ "$ask_user" == "y" ]; then
        # Redirect stdout and stderr to $logfile and $errorlogfile
        sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlogfile # also modify the command for testing purpose.
        sudo apt update -y 1>>$logfile 2>>$errorlogfile       # can also modify the command for testing purposes. 
        check_exit_code
    else
        echo "Process Aborted."
    fi
fi
