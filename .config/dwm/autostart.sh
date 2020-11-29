#!/bin/sh
sxhkd &
nitrogen --restore &
picom -b &
$HOME/.config/dwm/dwmconky.sh &
#$HOME/.config/dwm/statusbar.sh 2>&1 > /dev/null &
xset m 10 1 &
