#!/bin/sh
 
 FG='#aaaaaa'
 BG='#0a0a0a'
 FONT="Hack:size=11:antialias=true:hinting=true"
# FONT='-*-terminus-*-r-normal-*-*-80-*-*-*-*-iso8859-*'
 conky --config=$HOME/.config/conky/dwmconkyrc | dzen2 -e - -x '1400' -h '24' -w '1160' -ta r -fg $FG -bg $BG -fn $FONT &
