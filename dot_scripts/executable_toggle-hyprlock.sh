#!/bin/bash
# script to toggle hypridle (screen locking after 5 minutes)

if pgrep -x "hypridle" > /dev/null; then
    killall hypridle
    notify-send "🔴 Hypridle timeout disabled"
else
    setsid hypridle >/dev/null 2>&1 & # Detach Hypridle from the terminal and Waybar so that it doesn't freeze Waybar
    notify-send "🟢 Hypridle timeout enabled (5 minutes)"
fi
