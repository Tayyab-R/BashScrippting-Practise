#!/bin/bash

is_prime() {
    num=$1
    if [ $num -le 1 ]; then
        return 1
    fi

    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done

    return 0
}

echo "Enter a number to check if it's prime:"
read number

if is_prime $number; then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi
