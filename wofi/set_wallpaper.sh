   #!/bin/bash
   
   # Define the directory where your wallpapers are stored
   WALLPAPER_DIR="$HOME/.config/backgrounds"
   
   # Get a list of wallpaper files
   WALLPAPERS=$(ls "$WALLPAPER_DIR" | grep -E '\.(png|jpg|jpeg|webp)$')
   
   # Use rofi to display the list of wallpapers and get user selection
   SELECTED_WALLPAPER=$(rofi -drun -p "Select Wallpaper" -show-icons -lines 2 -default-to-first -width 300 -height 200 -format "{filename}" -no-clear -msg "Press ESC to exit.")
   
   # Check if a wallpaper was selected
   if [ -n "$SELECTED_WALLPAPER" ]; then
   
   # Construct the full path to the selected wallpaper
   SELECTED_WALLPAPER_PATH="$WALLPAPER_DIR"/"$SELECTED_WALLPAPER"
   
   # Use hyprpaper to set the wallpaper
   hyprpaper -r "$SELECTED_WALLPAPER_PATH"
   fi