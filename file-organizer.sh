#!/bin/bash

# This script organizes files according to their types in a directory.

# arrays to store extensions and file names
file_names=()
extension_array=()
unique_extensions=()
for file in * 
do
    if [ -f "$file" ]
        then
            file_names+=("$file")
            file_extension="${file##*.}"
            echo "File exist: $file with the extension: $file_extension"
            extension_array+=("$file_extension")
    else
        echo "Not File."
    fi
done

for extension in "${extension_array[@]}"
do  
    if [[ ! " ${unique_extensions[*]} " =~  $extension ]]
    then
        unique_extensions+=("$extension")
    fi
done

echo "${unique_extensions[@]}"

organize_files() {
    # makes directories using the names of extensions of files
    for dir_name in $1
    do
        if [ ! -d "$dir_name" ]
        then
            mkdir "$dir_name"
            echo "Directory made with the name of: $dir_name"
        else
            echo "Directories already exist. No need to make again."

        fi
    done
    
    # loops over file_names array to create a 'extnsn' var to store files extensions
    # matchs if file extension matches to 'dir_name'
    for file_names in $2
    do
        extnsn="${file_names##*.}"
        if [[ "$extnsn" == "$dir_name" ]]
        then
            echo "${file_names[$extnsn]} matches to $dir_name"
            mv "${file_names[$extnsn]}" "$dir_name"
            echo "File moved ${file_names[$extnsn]} to $dir_name"
        else
            echo "${file_names[$extnsn]} does not have any match."
        fi
    done
}


organize_files "${unique_extensions[*]}" "${file_names[*]}"