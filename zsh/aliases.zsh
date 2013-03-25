# shortcuts
alias g="git"
alias v="vim"
alias m="mate"
alias r="rake"
alias be="bundle exec"
alias reload='source ~/.zshrc && source ~/.zshenv'

# file system
alias fs="stat -f \"%z bytes\""
alias emptytrash="rm -rfv ~/.Trash"
alias et="emptytrash"

# folder navigation
alias ..='cd ..'
alias ...= 'cd ../..'
alias ~='cd'
alias l='ls -la'
alias ll='ls -l'

# ip address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'" 

# man pages in Preview
alias manpreview="man -t $1 | open -f -a Preview"

# http traffic
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# finder and spotlight stuff
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias disablespotlight="sudo mdutil -a -i off"
alias enablespotlight="sudo mdutil -a -i on"

# postgres
alias psstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias psstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
