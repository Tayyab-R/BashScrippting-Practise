#!/bin/bash

# The script takes two numbers as an input and performs  basic math funcions

echo -n "Enter a number: "
read first_num

echo -n "Enter second number: "
read second_num

sum="$((first_num+second_num))"
echo "The sum of $first_num and $second_num is: $sum"

if [ $first_num -lt $second_num ]
then
	subtract="$((second_num-first_num))"
	echo "The subtract of $second_num and $first_num is: $subtract"
else
	subtract="$((first_num-second_num))"
	echo "The subtract of $first_num and $second_num is: $subtract"
fi



