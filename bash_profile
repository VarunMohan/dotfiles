alias rm="rm -i"
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
    then . ~/.aliases
fi

if [ -f ~/.profile ]; 
    then . ~/.profile
fi
