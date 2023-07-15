#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlogfile=/var/log/updater_error.log

if grep -q "Arch" $release_file
then
    echo "This host is based on Arch"
    echo "Running command to update...."
    sudo pacman -Syu 1>>$logfile 2>>$errorlogfile
    if [ $? -ne 0 ] 
    then 
        echo "An error occured while running or updating the system."
        echo "Please check $errorlogfile for more information."
    elif [ $? -eq 0 ]
    then 
        echo "System successfully updated."
        echo "Check $logfile for further logs."
    else
        echo "An unknow error occured."
    fi
fi

if grep -q "Ubuntu" $release_file
then
    echo "This host is based on Ubuntu"
    echo -n "Do you want to update system? y/n "
    read ask_user
    if [ "$ask_user" == "y" ]
    then
        sudo apt adist-upgrade 1>>$logfile 2>>$errorlogfile
        sudo apt supdate 1>>$logfile 2>>$errorlogfile
        echo "Running command to update system."
         if [ $? -ne 0 ]
        then

            echo "Error occured. Please check $errorlogfile for more information."
            echo "Exit code $?"
        fi

        if [ $? -eq 0 ]
        then
            echo "System successfully updated.."
            echo "Check $logfile for more information."
            echo "Exit code $?"

       
    fi
fi

fi
