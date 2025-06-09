#!/bin/sh

# Handle clicks
case $BLOCK_BUTTON in
    1) pactl set-sink-mute @DEFAULT_SINK@ toggle && pkill -SIGRTMIN+11 i3blocks;;  # Left click: Mute/Unmute
    3) pavucontrol & ;;  # Right click: Open Pavucontrol
esac
#(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | tr -d '%')
# Get volume and mute status
echo " <: $(pamixer --get-volume)"


