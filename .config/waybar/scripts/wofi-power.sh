#!/bin/bash

# adapted from itsKia2/dotfiles

entries="  Logout\n Suspend\n Reboot\n Shutdown"

selected=$(echo -e $entries|wofi --width 250 --height 240 --location=top_right --yoffset=10 --xoffset=-10 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
    logout)
        exec hyprctl dispatch exit;;
    suspend)
        exec systemctl suspend;;
    reboot)
        exec systemctl reboot;;
    shutdown)
        exec systemctl poweroff;;
esac