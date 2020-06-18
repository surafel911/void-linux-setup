# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias ga='git add'
alias gl='git log'
alias gs='git status'
alias gb='git branch'
alias gdf='git diff'
alias grb='git rebase'
alias grs='git restore'
alias grm='git rm'
alias gst='git reset'
alias gcln='git clone'
alias gcom='git commit'
alias gchk='git checkout'
alias gpsh='git push'
alias gpll='git pull'

alias man='man '
alias sudo='sudo '
alias xi='xbps-install'
alias xq='xbps-query'
alias xr='xbps-remove'

PS1='[\u@\h \W]\$ '

export _JAVA_AWT_WM_NONREPARENTING=1

pfetch
