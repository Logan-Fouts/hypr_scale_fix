#!/bin/bash
monitor_list=$(hyprctl monitors | grep "Monitor" | awk '{print $2}')
echo "Detected monitors: ${monitor_list}"

for monitor in ${monitor_list}; do
    echo "Setting scaling for monitor: ${monitor}"
    hyprctl keyword monitor "${monitor},preferred,auto,1"
done

(
    sleep 2
    kicad &>/dev/null &
    sleep 20
    hyprctl reload
) &