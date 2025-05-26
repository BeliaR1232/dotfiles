#!/bin/fish

set wallpaper_dir "$HOME/Pictures/Wallpapers"

find $wallpaper_dir -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" \) -print0 | \
while IFS= read -r -d $'\0' file;
    printf "%s\0icon\x1f%s\n" "$(basename "$file")" "$file"
end | \
rofi -dmenu -i -p "Select Wallpaper" -markup-rows -width 40 -lines 15 -theme ~/.config/rofi/wallpaper-switcher.rasi | \
while IFS= read -r selected_wallpaper;
  if [[ -n "$selected_wallpaper" ]]
    swww img "$wallpaper_dir/$selected_wallpaper" --transition-type=wipe --transition-angle=30 --transition-fps=165;
  end  
end


