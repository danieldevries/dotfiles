export EDITOR='vim'

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)

setopt EXTENDED_HISTORY # add timestamps to history

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history