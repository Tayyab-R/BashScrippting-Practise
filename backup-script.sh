#!/bin/bash

# Bash Script: Backup Script
# Description: This script copies files from a source directory to a target directory
#              while creating a backup of any overwritten files in a date-stamped subdirectory.


# Check to make sure if user has entered two arguments
if [ $# -ne 2 ]; then
    echo "Usage: backup.sh requires <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

# Check if rsync is installed
if ! command -v rsync > /dev/null 2>&1; then
    echo "rsync is not installed"
    echo "Please install it using your distribution package manager."
    exit 2
fi

# Store the current date in the format: YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# Options for rsync command
rsync_options=(-avb --backup-dir $2/$current_date --delete --dry-run)

# Perform the rsync backup
$(which rsync) "$rsync_options" "$1" "$2"/current >> backup_"$current_date."log

# End of script
