# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

alias ls "exa --group-directories-first"
alias ll "ls -l"
alias lsd "lsd --color always --icon always --group-dirs first -F"
alias lls "lsd --color always --icon always --group-dirs first -F -l"
alias tb "nc termbin.com 9999"
alias lolcat "lolcat25"

set -gx PATH $HOME/bin $HOME/.cargo/bin $PATH /usr/games
set SHELL /usr/local/bin/fish
set -gx PAGER most

switch $TERM
    case 'st-*' # suckless' simple terminal
                # Enable keypad, do it once before fish_postexec ever fires
        tput smkx
        function st_smkx --on-event fish_postexec
            tput smkx
        end
        function st_rmkx --on-event fish_preexec
            tput rmkx
        end
end
