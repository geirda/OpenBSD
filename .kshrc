VERT=`hostname -s`
 PS1='$(echo -e "\033[1;32m$USER@$VERT\033[00m:\033[1;34m${PWD}\033[00m")> '
#PS1='${USER}@$VERT:${PWD}> '
export PS1
export XTERM_LOCALE=nb_NO.UTF-8
export LANG=nb_NO.UTF-8
export LC_ALL=nb_NO.UTF-8
export LC_CTYPE=en_US.UTF-8
bind -m '^L'=clear'^J'
alias ls='exa -F --group-directories-first'
alias ll='ls -l'
alias la='ls -a'
alias l='ls -CF'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
#echo one $(tput smso) two $(tput rmso) three
#echo one $(tput bold) two $(tput sgr0) three
PATH=$HOME/bin:$HOME/.cargo/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
