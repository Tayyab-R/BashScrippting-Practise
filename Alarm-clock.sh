#!/bin/bash


# Ensure given time is in coorect format
validate_alarm_time() {
    local input=$1
    if [[ ! $input =~ ^([01]?[0-9]|2[0-3]):([0-5][0-9])$ ]]
    then
        echo "Given time $input is not correct. Please use time format  (HH:MM) (00:59)"
        exit 1
    fi
}

read -rp  "Enter time to set alarm (HH:MM): " alarm_time
# read -rp "Enter the way you want the alarm to be triggered: 1(alarm message) 2(alarm sound)" alarm_trigger


# validate input time format
validate_alarm_time "$alarm_time"


while true
do
    current_time=$(date +%R)
    if [ "$alarm_time" \> "$current_time" ]
    then
        echo "Alarm will be triggered"
        sleep 1
        date +%R
        
    else
        echo "Alarm is triggered"
        date +%R
        break

    fi
done
