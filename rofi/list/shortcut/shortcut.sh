#!/bin/bash

choices=$(cat <<EOF
⌘ + Enter         ⟹ Open Terminal
⌘ + ⇧ + Enter     ⟹ Float Terminal
⌘ + B             ⟹ Open Browser
⌘ + Esc           ⟹ Kill Active Window
⌘ + F             ⟹ Toggle Floating
⌘ + F             ⟹ Fullscreen On
⌘ + F             ⟹ Fullscreen Off
⌘ + E             ⟹ Open File Manager
⌘ + P             ⟹ Open Power Menu
⌘ + [⎵]           ⟹ App Launcher
⌘ + W             ⟹ Wallpaper Picker
PrtSc             ⟹ Screenshot to Clipboard
PrtSc             ⟹ Save Screenshot to File
⌘ + ⇧ + R         ⟹ Toggle Waybar
⌘ + ⇧ + R         ⟹ Restart Waybar
⌘ + ⇧ + Tab       ⟹ Task Manager
⌘ + C             ⟹ Color Picker
⌘ + I             ⟹ Random Wallpaper + Hyprpaper
⌘ + V             ⟹ Clipboard Launcher
EOF
)


echo "$choices" | rofi -dmenu -i -p "Shortcuts" -theme "$HOME/.config/rofi/list/shortcut/style.rasi"
