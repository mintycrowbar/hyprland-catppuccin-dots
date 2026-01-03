#!/bin/bash

# Requested virtual desktop
REQUESTED_VDESK=$1

# Get the number of the current virtual desktop
CURRENT_VDESK=$(hyprctl printdesk | rev | cut -c 1 | rev)

# Check if the current virtual desktop is the same as the requested one
if [ "$CURRENT_VDESK" -eq "$REQUESTED_VDESK" ]; then
    notify-send "Already on selected virtual desktop"
else
    hyprctl dispatch vdesk $REQUESTED_VDESK
fi
