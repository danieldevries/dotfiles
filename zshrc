export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/zsh
export PROJECTS=~/code/projects

for config_file ($ZSH/**/*.zsh) source $config_file

[[ -f ~/.localrc ]] && . ~/.localrc

autoload -U compinit && compinit