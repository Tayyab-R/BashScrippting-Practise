#!/bin/bash
# This script is made to create a backup of a file with a timestamp appened to filename.
# Run this script in the directory where you want to make backups of the file.

# create timestamp
timestamp=$(date +%Y%m%d)

files=(*)

if [ ${#files[@]} -gt 0 ]
then
    echo "Files exist"
    for file_number in "${!files[@]}"
    do
        echo "[$file_number] ${files[$file_number]} "
    done
else
    echo "Files do not exist"
fi

read -p "Enter file number you want to read: " choice

case $choice in 
[0-9]*)
if [ "$choice" -ge 0 ] && [ "$choice" -lt "${#files[@]}" ]
then
    selected_file="${files[$choice]}"
    echo "Reading $selected_file content and making backup"
    # append timestamp at the end of file name
    backup_file=${selected_file}.${timestamp}
    # make copy of original file with backupfile
    cp "$selected_file" "$backup_file"
    echo "Backup file is made: $backup_file"

else
    echo "Invalid file number. Please try again..."
fi
;;
*)
echo "Invalid choice..."
;;
esac


