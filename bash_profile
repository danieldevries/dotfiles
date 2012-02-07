. ~/.dotfiles/bash/completions
. ~/.dotfiles/bash/functions
. ~/.dotfiles/bash/paths
. ~/.dotfiles/bash/config
. ~/.dotfiles/bash/aliases

if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
fi

if [ -f ~/.localrc ]; then
    source ~/.localrc # use .localrc for system specific settings
fi
