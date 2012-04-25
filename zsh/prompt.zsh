autoload colors && colors

export PS1="%{$fg_bold[yellow]%}%~%{$reset_color%} %{$fg_bold[green]%}: )%{$reset_color%} "
export RPS1='$(__git_prompt)'