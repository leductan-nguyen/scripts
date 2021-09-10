# add to .bashrc
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi

alias l='ls --color=auto'
alias ll='ls -halF --color=auto'
alias lld='ls -halFt --color=auto'
alias cl='clear'
alias ..='cd ..'
alias reboot='sudo reboot'
alias update='sudo apt update && sudo apt list --upgradable && sudo apt upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias h='history'
alias ports='netstat -tnlup'

# common aliases can use "aliases" plugin of ZSH
