# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ ! "$UID" = "0" ] && archbey -c red
[  "$UID" = "0" ] && archbey -c green

alias ls='ls --color=auto'
alias la='ls --color=auto -a'
alias pac='sudo pacman -S'
alias pacup='sudo pacman -Syu'
alias pacr='sudo pacman -Rns'

PS1='[\u]\[\033[m\][\w]\[\033[m\] -> '

set -o vi
export EDITOR='vim'
PATH="$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin"
source /usr/bin/virtualenvwrapper.sh
