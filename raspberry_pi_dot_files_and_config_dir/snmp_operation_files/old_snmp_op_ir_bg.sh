#!/bin/bash

# Set the path to the file you want to monitor
file_to_monitor="/home/pi/symlink_snmp/str_check.txt"

# Get the initial modification time
initial_mod_time=$(stat -c %Y "$file_to_monitor")

# Define the GPIO pin number as a variable
tx_pin=21
s_02_tx_pin=20
codes_s_01="/home/pi/pi_serv/r_codes.json"

s-01-mute() 
{

	echo "mute button Executing"

	# Set the NEC remote value in a variable
	#ir_code_val=$(cat /home/pi/symlink_snmp/ir_codes/stb_1/s-01-mute)

	# Run the command with the substituted value
	#ir-ctl -S "$ir_code_val" -d /dev/lirc0
	piir play --gpio "$tx_pin" --file "$codes_s_01" mute

}

### this is gpio pin stuff --> not remote
# s-01-high-sensitivity()
# {
#     echo "High Sensitivity button execute"
#     # Add your commands here
# }

s-01-power()
{
    echo "Power button execute"
    piir play --gpio "$tx_pin" --file "$codes_s_01" power
}


s-01-VOL_up()
{
    echo "Volume Up button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" VOL_up
}

s-01-VOL_down()
{
    echo "Volume Down button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" VOL_down
}

s-01-CH_up()
{
    echo "Channel Up button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_up
}

s-01-CH_down()
{
    echo "Channel Down button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_down
}

s-01-CH_1()
{
    echo "Channel 1 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_1
}

s-01-CH_2()
{
    echo "Channel 2 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_2
}

s-01-CH_3()
{
    echo "Channel 3 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_3
}

s-01-CH_4()
{
    echo "Channel 4 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_4
}

s-01-CH_5()
{
    echo "Channel 5 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_5
}

s-01-CH_6()
{
    echo "Channel 6 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_6
}

s-01-CH_7()
{
    echo "Channel 7 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_7
}

s-01-CH_8()
{
    echo "Channel 8 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_8
}

s-01-CH_9()
{
    echo "Channel 9 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_9
}

s-01-CH_0()
{
    echo "Channel 0 button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" CH_0
}

s-01-Left()
{
    echo "Left button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" left
}

s-01-Right()
{
    echo "Right button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" right
}

s-01-Up()
{
    echo "Up button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" up
}

s-01-Down()
{
    echo "Down button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" down
}

s-01-Select()
{
    echo "Select button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" select
}

s-01-Menu()
{
    echo "Menu button execute"
    # Add your commands here
    piir play --gpio "$tx_pin" --file "$codes_s_01" menu
}






############## remote-2 functions #####################

s-02-mute() 
{

	echo "mute button Executing"
	piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" mute

}

s-02-power()
{
    echo "Power button execute"
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" power
}


s-02-VOL_up()
{
    echo "Volume Up button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" VOL_up
}

s-02-VOL_down()
{
    echo "Volume Down button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" VOL_down
}

s-02-CH_up()
{
    echo "Channel Up button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_up
}

s-02-CH_down()
{
    echo "Channel Down button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_down
}

s-02-CH_1()
{
    echo "Channel 1 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_1
}

s-02-CH_2()
{
    echo "Channel 2 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_2
}

s-02-CH_3()
{
    echo "Channel 3 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_3
}

s-02-CH_4()
{
    echo "Channel 4 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_4
}

s-02-CH_5()
{
    echo "Channel 5 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_5
}

s-02-CH_6()
{
    echo "Channel 6 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_6
}

s-02-CH_7()
{
    echo "Channel 7 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_7
}

s-02-CH_8()
{
    echo "Channel 8 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_8
}

s-02-CH_9()
{
    echo "Channel 9 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_9
}

s-02-CH_0()
{
    echo "Channel 0 button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" CH_0
}

s-02-Left()
{
    echo "Left button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" left
}

s-02-Right()
{
    echo "Right button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" right
}

s-02-Up()
{
    echo "Up button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" up
}

s-02-Down()
{
    echo "Down button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" down
}

s-02-Select()
{
    echo "Select button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" select
}

s-02-Menu()
{
    echo "Menu button execute"
    # Add your commands here
    piir play --gpio "$s_02_tx_pin" --file "$codes_s_01" menu
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

		# Check for specific strings using a case statement
		case "$file_contents" in
			*"s-01-mute"*)

				s-01-mute

				;;
			*"s-01-power"*)
				#echo "Specific string 2 found! Executing script 2..."
				# Replace 'script2.sh' with the actual script you want to execute for string 2
				
				s-01-power
				;;
			*"s-01-VOL_up"*)
				s-01-VOL_up
				;;
			*"s-01-VOL_down"*)
				s-01-VOL_down
				;;
			*"s-01-CH_up"*)
				s-01-CH_up
				;;
			*"s-01-CH_down"*)
				s-01-CH_down
				;;
			*"s-01-CH_1"*)
				s-01-CH_1
				;;
			*"s-01-CH_2"*)
				s-01-CH_2
				;;
			*"s-01-CH_3"*)
				s-01-CH_3
				;;
			*"s-01-CH_4"*)
				s-01-CH_4
				;;
			*"s-01-CH_5"*)
				s-01-CH_5
				;;
			*"s-01-CH_6"*)
				s-01-CH_6
				;;
			*"s-01-CH_7"*)
				s-01-CH_7
				;;
			*"s-01-CH_8"*)
				s-01-CH_8
				;;
			*"s-01-CH_9"*)
				s-01-CH_9
				;;
			*"s-01-CH_0"*)
				s-01-CH_0
				;;
			*"s-01-Left"*)
				s-01-Left
				;;
			*"s-01-Right"*)
				s-01-Right
				;;
			*"s-01-Up"*)
				s-01-Up
				;;
			*"s-01-Down"*)
				s-01-Down
				;;
			*"s-01-Select"*)
				s-01-Select
				;;
			*"s-01-Menu"*)
				s-01-Menu
				;;



# remote-2 code check

			*"s-02-mute"*)

				s-02-mute

				;;
			*"s-02-power"*)
				
				s-02-power
				;;
			*"s-02-VOL_up"*)
				s-02-VOL_up
				;;
			*"s-02-VOL_down"*)
				s-02-VOL_down
				;;
			*"s-02-CH_up"*)
				s-02-CH_up
				;;
			*"s-02-CH_down"*)
				s-02-CH_down
				;;
			*"s-02-CH_1"*)
				s-02-CH_1
				;;
			*"s-02-CH_2"*)
				s-02-CH_2
				;;
			*"s-02-CH_3"*)
				s-02-CH_3
				;;
			*"s-02-CH_4"*)
				s-02-CH_4
				;;
			*"s-02-CH_5"*)
				s-02-CH_5
				;;
			*"s-02-CH_6"*)
				s-02-CH_6
				;;
			*"s-02-CH_7"*)
				s-02-CH_7
				;;
			*"s-02-CH_8"*)
				s-02-CH_8
				;;
			*"s-02-CH_9"*)
				s-02-CH_9
				;;
			*"s-02-CH_0"*)
				s-02-CH_0
				;;
			*"s-02-Left"*)
				s-02-Left
				;;
			*"s-02-Right"*)
				s-02-Right
				;;
			*"s-02-Up"*)
				s-02-Up
				;;
			*"s-02-Down"*)
				s-02-Down
				;;
			*"s-02-Select"*)
				s-02-Select
				;;
			*"s-02-Menu"*)
				s-02-Menu
				;;











			*)
				echo "No specific strings found."
				;;
		esac


		# Update the initial modification time
		initial_mod_time="$current_mod_time"
	fi

	# Sleep for a while before checking again (e.g., every 5 seconds)
	sleep .05
done

