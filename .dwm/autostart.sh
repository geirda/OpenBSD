#!/bin/sh
#$HOME/bin/statusbar.sh 2>&1 > /dev/null &
nitrogen --restore &
compton --config $HOME/.config/compton-dwm.conf &
$HOME/bin/dwmconky &
xset m 10 1 &
