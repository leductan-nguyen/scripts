# Custom aliases for non-root users
# Show aliases in this file
alias all='cat ~/.oh-my-zsh/custom/aliases.zsh'

# FILES
alias l='ls -hl --color=auto'
alias ll='ls -halF --color=auto'
alias lld='ls -halFt --color=auto'
alias t='tree -L 1'
alias tt='tree -L 2'
alias cl='clear'
alias ..='cd ..'
alias h='history'

# SYSYTEM
alias reboot='sudo reboot'
alias update='sudo apt update && sudo apt list --upgradable && sudo apt upgrade && sudo apt-get autoremove && sudo apt-get autoclean'
alias ports='sudo netstat -tanlup'
alias sctls='sudo systemctl status'
alias sctlS='sudo systemctl start'
alias sctlx='sudo systemctl stop'
alias sctll='sudo systemctl list-unit-files | grep enabled'

# DOCKER
alias docker-compose="docker compose"

# UFW
alias ufws='sudo ufw status numbered'
alias ufwa='sudo ufw allow'
alias ufwd='sudo ufw deny'
alias ufwD='sudo ufw delete'

# FAIL2BAN
alias f2bst='sudo fail2ban-client status | sed -n '\''s/,//g;s/.*Jail list://p'\'' | sudo xargs -n1 fail2ban-client status'
