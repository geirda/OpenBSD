#!/bin/sh
nitrogen --restore &
compton --config $HOME/.config/compton-dwm.conf &
$HOME/.config/dwm/dwmconky.sh &
#$HOME/.config/dwm/statusbar.sh 2>&1 > /dev/null &
xset m 10 1 &
