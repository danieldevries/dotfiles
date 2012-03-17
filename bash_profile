. ~/.dotfiles/bash/completions
. ~/.dotfiles/bash/functions
. ~/.dotfiles/bash/paths
. ~/.dotfiles/bash/config
. ~/.dotfiles/bash/aliases
. ~/.dotfiles/bash/lol

if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
fi

if [ -f ~/.localrc ]; then # use .localrc for system specific settings
  source ~/.localrc
fi