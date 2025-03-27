#!/bin/bash
DIR=$HOME/.config/hypr/wallpapers


CURRENT=$(hyprctl hyprpaper listactive | grep "DP-1")
WALLPAPER=$(find "$DIR" -type f ! -name "$(basename "$CURRENT")" | shuf -n 1)
hyprctl hyprpaper reload DP-1,"$WALLPAPER"

CURRENT=$(hyprctl hyprpaper listactive | grep "DP-2")
WALLPAPER=$(find "$DIR" -type f ! -name "$(basename "$CURRENT")" | shuf -n 1)
hyprctl hyprpaper reload DP-2,"$WALLPAPER"