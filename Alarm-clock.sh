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

trigger_alarm_by_message() {
    $1
    $2
    if [ "$1" \> "$2" ]
    then
        echo "Allarm will be triggerred by message...."
    else
        echo "Alarm is triggered"
        
    fi
}

trigger_alarm_by_sound() {
    echo "The feature of triggering alarm by sound is in the work"
    echo "Please wait. Thank you for you patience."
}

read -rp  "Enter time to set alarm (HH:MM): " alarm_time
read -rp "Enter the way you want the alarm to be triggered: 1(alarm message) 2(alarm sound)" alarm_trigger





while true
do
    # validate input time format
    validate_alarm_time "$alarm_time"

    current_time=$(date +%R)
    if [[ "$alarm_trigger" = 1 ]]
    then
        trigger_alarm_by_message "$alarm_time" "$current_time" 
        break
    else
        trigger_alarm_by_sound
        break
        
    fi
    
done
