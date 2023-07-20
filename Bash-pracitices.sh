#!/bin/bash

# Bash Script: beginner_practices.sh
# Description: A script demonstrating best practices for beginners in bash scripting.

# Function: say_hello
# Description: Print "Hello" to the console.
function say_hello() {
    echo "Hello"
}

# Function: say_world
# Description: Print "World" to the console.
function say_world() {
    echo "World"
}

# Main script starts here

# Use Meaningful Variable Names
first_name="John"
last_name="Doe"

# Indentation
for i in {1..5}; do
    echo "Number: $i"
done

# Quoting
filename="$1"
echo "Processing $filename"

# Error Handling
if [ -f "$filename" ]; then
    cat "$filename"
else
    echo "File not found."
fi

# Commenting
# Check if the user is an admin
user_role="admin"
if [ "$user_role" = "admin" ]; then
    echo "You have admin privileges."
else
    echo "You do not have admin privileges."
fi

# Avoid Hardcoding
ls "$1"   # Use command-line argument for the path

# Function Calls
say_hello
# some code here
say_world
