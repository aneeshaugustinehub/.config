#!/bin/bash
if rfkill list bluetooth | grep -q "Soft blocked: yes"; then
    rfkill unblock bluetooth
    echo "󰂯"  # Bluetooth on icon (use a suitable icon for your font)
else
    rfkill block bluetooth
    echo "󰂲"  # Bluetooth off icon
fi