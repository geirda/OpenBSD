# $OpenBSD: dot.profile,v 1.5 2018/02/02 02:29:54 yasuoka Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:$HOME/.local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM
export ENV=$HOME/.shrc
XDG_CONFIG_HOME=$HOME/.config/
export XDG_CONFIG_HOME

# if running ksh
if [ -n "$KSH_VERSION" ]; then
    # include .kshrc if it exists
    if [ -f "$HOME/.kshrc" ]; then
        . "$HOME/.kshrc"
    fi
fi
