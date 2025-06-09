#!/bin/bash

case $BLOCK_BUTTON in
    1) blueman-manager ;;
esac



device=$(bluetoothctl info | grep "Name" | awk -F 'Name: ' '{print $2}' | head -n1)
echo " BT: ${device:-[X]} |"




#[Bluetooth]
#command=~/.config/i3blocks/bt.sh
#interval=5

