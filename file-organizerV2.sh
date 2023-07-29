#!/bin/bash

# This script organizes files according to their types in a directory.

# Arrays to store extensions and file names
file_names=()
extension_array=()
unique_extensions=()

# Function to get extensions of files in the current directory
get_files_extensions() {
    for file in * 
    do
        if [ -f "$file" ]
        then
            file_names+=("$file")                       # Add file to the file_names array
            file_extension="${file##*.}"                # Extract the file extension
            echo "File exist: $file with the extension: $file_extension"
            extension_array+=("$file_extension")        # Add extension to the extension_array
        else
            echo "Not a file."
        fi
    done

    # Loop through the extension_array to get unique extensions
    for extension in "${extension_array[@]}"
    do  
        if [[ ! " ${unique_extensions[*]} " =~  $extension ]]  # Check if extension is not already present
        then
            unique_extensions+=("$extension")           # Add unique extension to unique_extensions array
        fi
    done

    echo "${unique_extensions[@]}"                       # Output the unique extensions
}

# Function to organize files into directories based on their extensions
organize_files() {
    # Make directories using the names of extensions of files
    for dir_name in $1
    do
        if [ ! -d "$dir_name" ]
        then
            mkdir "$dir_name"                           # Create the directory with the extension name
            echo "Directory made with the name of: $dir_name"
        else
            echo "Directories already exist. No need to make again."
        fi
    done
    
    # Loop over file_names array to create a 'extnsn' var to store files extensions
    # Check if file extension matches 'dir_name', then move the file to the corresponding directory
    for file in "${file_names[@]}"
    do
        extnsn="${file##*.}"                           # Extract the file extension of each file
        if [[ "$extnsn" == "$dir_name" ]]
        then
            echo "$file matches to $dir_name"
            mv "$file" "$dir_name"                      # Move the file to the directory with corresponding extension
            echo "File moved $file to $dir_name"
        else
            echo "$file does not have any match."
        fi
    done
}

# Call functions
get_files_extensions
organize_files "${unique_extensions[*]}" "${file_names[*]}"
+