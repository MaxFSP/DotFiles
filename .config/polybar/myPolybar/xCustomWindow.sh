#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)


if [ $WM_DESKTOP == "1336" ];then
	current_desktop=$(bspc query -D -d focused --names)
	echo "Desktop $current_desktop"

else
	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g' )

	if [ $WM_CLASS == 'kitty' ]; then
		terminal_id=$(xdotool getwindowfocus)
		terminal_file_name=$(xprop -id $terminal_id WM_NAME | sed 's/.*"\(.*\)"/\1/')
	
		if [[ $terminal_file_name == "max@arch"* ]]; then
			terminal_name=$(xprop -id $terminal_id WM_NAME | sed 's/.*:\(.*\)"/\1/')
			echo "$terminal_name"
		fi	
	
		read -r first_word second_word <<< "$terminal_file_name"		
		echo "$first_word - $second_word"
	
	else		
		WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')
		echo $WM_NAME
	fi
fi	
