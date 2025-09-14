#!/usr/bin/env bash

# List of options with emoji or icons
options=(
  "󱧐   Update System"
  "   Update Mirrors"

)

# Turn array into newline-separated string
choice=$(printf "%s\n" "${options[@]}" | rofi -dmenu -theme ~/.config/rofi/list/update/style.rasi -p "Update")

case "$choice" in
  "󱧐   Update System") kitty sudo pacman -Syu ;;
  "   Update Mirrors") kitty sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist ;;
esac
