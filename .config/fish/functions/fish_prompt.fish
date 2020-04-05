# name: mars (based on eclm)
function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  if test $last_status = 0
      set arrow " $green❯︎︎"
  else
      set arrow " $red❯︎︎"
  end
  set -l cwd $cyan(prompt_pwd)

  if [ (_git_branch_name) ]
    set git_branch (_git_branch_name)

    if [ (_is_git_dirty) ]
      set git_info "$blue ($yellow$git_branch±$blue)"
    else
      if test (_git_branch_name) = 'master'
        set git_info "$blue ($red$git_branch$blue)"
      else
        set git_info "$blue ($normal$git_branch$blue)"
      end
    end
  end

  echo -n -s $cwd $git_info $normal $arrow $normal ' '
end

