set WALLPAPER_DIR "$HOME/Pictures/Wallpapers"
set CURRENT_WALL $(swww query | grep -Po "\w+\.(jpg|png)" | shuf -n 1)

set WALLPAPER $(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

swww img "$WALLPAPER" 
