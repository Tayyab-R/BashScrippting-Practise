#!/bin/bash

# This is a Bash script that demonstrates the concept of a for loop in Bash.
# It compresses all files with the .log extension in the logfiles directory into .tar.gz archives.

# Create a temporary directory called logfiles for demonstration purposes.
# Create .log files in logfiles directory for the demonstration purposes
# In a real scenario, you would replace this line with the appropriate path to your log files.

# mkdir logfiles && cd logfiles && touch {1..10}.log
# Uncomment the above line if you do not know how to make directory and files in bulk.


# Iterate over each file in the logfiles directory that has the .log extension.
# The variable "file" will hold the name of each file during each iteration.
for file in logfiles/*.log
do
    # Compress the current file into a .tar.gz archive using the tar command.
    # -c: create a new archive
    # -z: compress the archive with gzip
    # -v: show verbose output
    # -f: specify the output file name
    # $file.tar.gz: the name of the output archive file
    # $file: the name of the input file being compressed
    tar -czvf $file.tar.gz $file
done

# End of the script.

