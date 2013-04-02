export EDITOR='vim'
export PS1='\[\033[0;32m\][\u][\w]\[\033[0m\] \[\033[0;33m\]->\[\033[0m\] '

alias ls='ls --color=auto'
alias la='ls --color=auto -a'

export PATH=$PATH:$HOME/.cabal/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
