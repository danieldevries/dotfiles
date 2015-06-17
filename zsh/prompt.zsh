autoload colors && colors

export PS1="%{$fg[green]%}λ%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%} %{$fg[red]%}➜%{$reset_color%}  "
export RPS1='$(__git_prompt)'