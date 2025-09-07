#!/usr/bin/env bash

# List of options with emoji or icons
options=(
  "  Lock"
  "  Suspend"
  "  Logout"
  "  Shutdown"
  "  Reboot"
  "  Reboot to FW"
)

# Turn array into newline-separated string
choice=$(printf "%s\n" "${options[@]}" | rofi -dmenu -theme ~/.config/rofi/list/powermenu/powermenu.rasi -p "Power Menu")

case "$choice" in
  "  Lock") swaylock ;;
  "  Suspend") systemctl suspend ;;
  "  Logout") hyprctl dispatch exit ;;
  "  Shutdown") systemctl poweroff ;;
  "  Reboot") systemctl reboot ;;
  "  Reboot to FW") systemctl reboot --firmware-setup ;;
esac
