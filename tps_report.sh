#!/bin/bash

# This script generates TPS report with arguments given.

day=$1
sender=$2

if [ $# -ne 0 ] 
then
    echo "Please sumbit your TPS report on $day. We are waiting for your response."
    echo "Best regards $sender"
else
    echo "usage: day (required)  sender (required)"
    
fi
