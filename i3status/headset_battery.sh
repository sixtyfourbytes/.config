#!/bin/sh

# Find the upower device path for the connected headset
DEVICE=$(upower -e | grep -m 1 "headset")

if [ -n "$DEVICE" ]; then
    # Extract percentage integer
    PERCENT=$(upower -i "$DEVICE" | grep percentage | awk '{print $2}' | tr -d '%')
    echo "󰋎 ${PERCENT}%"
else
    echo ""
fi
