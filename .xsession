export LANG=nb_NO.UTF-8
ulimit -Sc 0

if [ -f "$HOME/.Xresources" ]; then
    xrdb -merge "$HOME/.Xresources"
fi

exec dwm
