monitor_list="$(hyprctl monitors all | awk '/Monitor/ {print $2}')"
echo "Detected monitors: ${monitor_list}"

for i in "${!monitors[@]}"; do
    # hyprctl keyword monitor "${monitors[$i]},scale,1.0"
    hyprctl --batch "keyword monitor $monitor,preferred,auto,1 ; keyword display $monitor scale 1.0"
done


echo "🚀 Launching program and restoring scaling..."
(
    sleep 5
    kicad &>/dev/null &
    sleep 5
    hyprctl reload
) &

echo "✅ Program launched and scaling restoration scheduled!"