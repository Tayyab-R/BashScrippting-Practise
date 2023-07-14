#!/bin/bash

# The script is written to rename files using loop in a directory

directory=temp

for file in "$directory"/*
do
	if [ -e "$file" ]
	then
		echo -n "Do you want to rename file $file? "
		read ask_user
		if [[ $ask_user == "y" ]]
		then
			echo -n "Enter name to rename file: "
			read ask_user
			mv "$file" "$ask_user"
			echo "File renamed to $ask_user.."
	
		elif [[ $ask_user != "y" ]]
		then
			echo "Okk.. Printing Files"
			echo "File exits with $file"
		else
			"printing file names"
			exit 0
		fi
	else
	echo "File does not exist..."
	fi
done

