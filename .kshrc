PS1='$(echo -e "\033[1;34m$(pwd | sed -E "s-^$HOME($|(/.*))-~\2-")\033[1;32m ❯\033[00m") '
#PS1='${USER}@$(hostname -s):${PWD}> '
export PS1
export XTERM_LOCALE=nb_NO.UTF-8
export LANG=nb_NO.UTF-8
export LC_ALL=nb_NO.UTF-8
export LC_CTYPE=en_US.UTF-8

bind -m '^L'=clear'^J'

#alias ls='exa --group-directories-first'
alias ll='ls -l'
alias la='ls -a'
alias l='ls -F'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#echo one $(tput smso) two $(tput rmso) three
#echo one $(tput bold) two $(tput sgr0) three

PATH=$HOME/bin:$HOME/.local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

case "$TERM" in
vt220*)
	;;
*)
	tput smkx
	;;
esac

fortune
