#!/bin/bash
# ~/.config/waybar/scripts/toggle-cava.sh

CAVA_SCRIPT="$HOME/.config/waybar/scripts/cava.sh"
PID_FILE="$HOME/.config/waybar/cava.pid"

# Check if cava.sh is running
if [ -f "$PID_FILE" ] && kill -0 "$(cat "$PID_FILE")" 2>/dev/null; then
    # If running, kill it
    kill "$(cat "$PID_FILE")"
    rm -f "$PID_FILE"
    echo "{\"text\": \"▷\", \"tooltip\": \"CAVA stopped\"}"
else
    # If not running, start cava.sh in the background
    "$CAVA_SCRIPT" &
    echo $! > "$PID_FILE"
    echo "{\"text\": \"▮\", \"tooltip\": \"CAVA running\"}"
fi