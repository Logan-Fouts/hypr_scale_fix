## This is just a really stupid workaround for the kicad hyprland scaling issue.
It just auto scales your monitors to 1.0 to allow you to open up your kicad windows you will need before it puts the monitors back to how they were before.s

I would recommend adding an **alias** for kicad using a command like below.

`echo "alias kicad='/home/logan/Code/hypr_scale_fix/kicad_wrapper.sh'" >> ~/.zshrc`

_You will need to update the command to your location of this repo or script and also your shell location._

When you want to use it just:
1. Run kicad in the terminal and then
2. Open up the pcb editor and whatnot you will need before the script reverts the monitors.
