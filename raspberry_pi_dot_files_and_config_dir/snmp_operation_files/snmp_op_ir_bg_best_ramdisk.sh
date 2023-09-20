#!/bin/bash

# Set the path to the file you want to monitor
file_to_monitor="/home/pi/symlink_snmp/ramdisk/str_check.txt"

# Get the initial modification time
initial_mod_time=$(stat -c %Y "$file_to_monitor")

# Define the GPIO pin numbers as variables
s_01_tx_pin=21
s_02_tx_pin=20
codes_s_01="/home/pi/pi_serv/r_codes.json"

# Define an associative array to map button names to functions
declare -A button_mapping
button_mapping=(
    ["s-01-mute"]=mute
    ["s-01-power"]=power
    ["s-01-VOL_up"]=VOL_up
    ["s-01-VOL_down"]=VOL_down
    ["s-01-CH_up"]=CH_up
    ["s-01-CH_down"]=CH_down
    ["s-01-CH_1"]=CH_1
    ["s-01-CH_2"]=CH_2
    ["s-01-CH_3"]=CH_3
    ["s-01-CH_4"]=CH_4
    ["s-01-CH_5"]=CH_5
    ["s-01-CH_6"]=CH_6
    ["s-01-CH_7"]=CH_7
    ["s-01-CH_8"]=CH_8
    ["s-01-CH_9"]=CH_9
    ["s-01-CH_0"]=CH_0
    ["s-01-Left"]=left
    ["s-01-Right"]=right
    ["s-01-Up"]=up
    ["s-01-Down"]=down
    ["s-01-Select"]=select
    ["s-01-Menu"]=menu

    ["s-02-mute"]=mute
    ["s-02-power"]=power
    ["s-02-VOL_up"]=VOL_up
    ["s-02-VOL_down"]=VOL_down
    ["s-02-CH_up"]=CH_up
    ["s-02-CH_down"]=CH_down
    ["s-02-CH_1"]=CH_1
    ["s-02-CH_2"]=CH_2
    ["s-02-CH_3"]=CH_3
    ["s-02-CH_4"]=CH_4
    ["s-02-CH_5"]=CH_5
    ["s-02-CH_6"]=CH_6
    ["s-02-CH_7"]=CH_7
    ["s-02-CH_8"]=CH_8
    ["s-02-CH_9"]=CH_9
    ["s-02-CH_0"]=CH_0
    ["s-02-Left"]=left
    ["s-02-Right"]=right
    ["s-02-Up"]=up
    ["s-02-Down"]=down
    ["s-02-Select"]=select
    ["s-02-Menu"]=menu

)

# Function to send IR command
send_ir_command() {
    local gpio_pin=$1
    local button=$2
    echo "$button button execute"
    piir play --gpio "$gpio_pin" --file "$codes_s_01" "$button"
}


# Loop indefinitely
while true; do
    # Get the current modification time
    current_mod_time=$(stat -c %Y "$file_to_monitor")

    # Compare current and initial modification times
    if [ "$current_mod_time" != "$initial_mod_time" ]; then
        echo "File modification detected! Executing ir_remote code..."

        # Read the contents of the text file
        file_contents=$(cat "$file_to_monitor")



		# Check if the file contains "s-02" and update the tx_pin accordingly
        if [[ "$file_contents" == *"s-02"* ]]; then
            tx_pin=$s_02_tx_pin
        else
            tx_pin=$s_01_tx_pin
        fi


        # Check for specific strings and execute corresponding function
        for button in "${!button_mapping[@]}"; do
            if [[ "$file_contents" == *"$button"* ]]; then
                func="${button_mapping[$button]}"
                send_ir_command "$tx_pin" "$func"
            fi
        done

        # Update the initial modification time
        initial_mod_time="$current_mod_time"
    fi

    # Sleep for a while before checking again (e.g., every 5 seconds)
    sleep 0.10
done

