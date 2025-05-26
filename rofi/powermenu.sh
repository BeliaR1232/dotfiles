#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Power Menu
#
## Available Styles
#
## style-1   style-2   style-3   style-4   style-5
## style-6   style-7   style-8   style-9   style-10

# Current Theme
set dir "$HOME/.config/rofi"
set theme 'powermenu'

# CMDs
set uptime "`uptime -p | sed -e 's/up //g'`"
set host `hostname`

# Options
set shutdown ''
set reboot ''
set lock ''
set suspend ''
set logout ''
set yes ''
set no ''

# Rofi CMD
function rofi_cmd
	rofi -dmenu \
		-p "Uptime: $uptime" \
		-mesg "Uptime: $uptime" \
		-theme $dir/$theme.rasi
end

# Confirmation CMD
function confirm_cmd
	rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 350px;}' \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
		-theme-str 'listview {columns: 2; lines: 1;}' \
		-theme-str 'element-text {horizontal-align: 0.5;}' \
		-theme-str 'textbox {horizontal-align: 0.5;}' \
		-dmenu \
		-p 'Confirmation' \
		-mesg 'Are you Sure?' \
		-theme $dir/$theme.rasi
end

# Ask for confirmation
function confirm_exit
	echo -e "$yes\n$no" | confirm_cmd
end

function run_rofi
	echo -e "$reboot\n$shutdown" | rofi_cmd
end

# Execute Command
function run_cmd -a command
	set selected $(confirm_exit)
	switch $selected
        case $yes
	        switch $command
                case shutdown
			        systemctl poweroff
                case reboot
			        shutdown -r now
            end
        case "*"
		    exit 0
    end
end

set chosen $(run_rofi)
switch $chosen
    case $shutdown
        run_cmd shutdown
    case $reboot
        run_cmd reboot
end
