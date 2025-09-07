#!/bin/bash

# Directory containing the folders
ROFI_CONFIG_DIR="/home/av/.config/rofi/list"

# Get list of folders (excluding hidden files and non-directories)
OPTIONS=$(ls -d $ROFI_CONFIG_DIR/*/ | xargs -n 1 basename)

# Display Rofi menu and capture the selected option
SELECTED=$(echo "$OPTIONS" | rofi -dmenu -i -p "Select Script: " -theme "$HOME/.config/rofi/rofi-list.rasi")

# Check if a selection was made
if [ -n "$SELECTED" ]; then
    # Check if the script exists and is executable
    SCRIPT_PATH="$ROFI_CONFIG_DIR/$SELECTED/$SELECTED.sh"
    if [ -f "$SCRIPT_PATH" ] && [ -x "$SCRIPT_PATH" ]; then
        # Execute the selected script
        "$SCRIPT_PATH"
    else
        notify-send "Error" "Script $SCRIPT_PATH not found or not executable"
    fi
fi