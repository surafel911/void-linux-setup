# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'

alias gs='git status'
alias gb='git branch'
alias grb='git rebase'
alias grm='git rm'
alias gadd='git add'
alias gcln='git clone'
alias gcom='git commit'
alias gchk='git checkout'
alias glog='git log'
alias gpsh='git push'
alias gpul='git pull'

alias sudo='sudo '
alias xi='xbps-install'
alias xq='xbps-query'
alias xr='xbps-remove'

PS1='[\u@\h \W]\$ '

pfetch
