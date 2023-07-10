#!/bin/bash

# The universal script to update linux distro based on OS-release file

release_file=/etc/os-release

if grep -q "Arch"  $release_file
then
	echo "This distro is based on Arch, updating the arch..."
	sudo pacman -Sye
fi

if grep -q "Ubuntu" $release_file
then
	echo "The distro is based on debian or ubuntu. running update command...."
	echo -n "Do you want to update your OS. (no/yes) "
	read ask_user
	if [ $ask_user == "no" ] 
	then 
		echo "Process Stopped..."
		exit 0
	else
		echo "updating system..."
		sudo apt update
		sudo apt dist-upgrade
	fi
fi
