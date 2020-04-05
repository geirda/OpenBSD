#!/bin/sh
nitrogen --restore &
compton --config $HOME/.config/compton-dwm.conf &
$HOME/.dwm/dwmconky.sh &
#$HOME/.dwm/statusbar.sh 2>&1 > /dev/null &
xset m 10 1 &
