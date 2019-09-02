# vim: set noet:
#
# Set the default prompt command.

function fish_prompt --description "Write out the prompt"
    set -l color_cwd
    set -l color_mappe
    set -l bg1
    set -l bg2
    set -l suffix
    set -l arrow
    switch "$USER"
        case root toor
	    set color_cwd brred
	    set bg1 444444
	    set color_mappe black
	    set bg2 brblue
            set suffix '#'
	    set arrow ''
        case '*'
	    set color_cwd brgreen
	    set bg1 333333
	    set color_mappe 2e3436
	    set bg2 7aa4d8
	    set suffix ' '
            set arrow ''
    end

    echo -n -s (set_color -o $color_cwd -b $bg1) "$USER" @ (prompt_hostname) ' ' (set_color $bg1 -b $bg2) "$arrow" ' ' (set_color -o $color_mappe -b $bg2) (prompt_pwd) "$suffix" (set_color $bg2 -b normal) "$arrow" (set_color normal) ' '
end
