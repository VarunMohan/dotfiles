export PS1="\u.\w> "

alias rm="rm -i"
alias ls="ls -FCG --color=auto"
alias clr=clear
alias h=history
alias grep='grep --color=auto'

export EDITOR=/usr/bin/vim
export GOPATH=$HOME/go

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:$GOPATH/bin

# Uncomment based on mac/linux
#if [ -f ~/.bashrc ]; 
    #then source ~/.bashrc
#fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.aliases ]; 
    then source ~/.aliases
fi
