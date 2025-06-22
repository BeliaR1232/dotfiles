#!/bin/bash
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
CURRENT_WALL=$(swww query | grep -Po "\w+\.(jpg|png)" | shuf -n 1)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

swww img "$WALLPAPER" 
