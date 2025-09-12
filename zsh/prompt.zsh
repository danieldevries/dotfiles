autoload colors && colors
autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

PROMPT="%{$fg[green]%}#%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%} %{$fg[red]%}>%{$reset_color%} "
RPROMPT='%(?..%F{red}(%?%)%f)%b%B%F{green}${vcs_info_msg_0_}%f'

# https://salferrarello.com/zsh-git-status-prompt/

