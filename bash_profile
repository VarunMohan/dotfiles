alias rm="rm -i"
alias clr=clear
alias h=history
alias grep='grep --color=auto'
alias ls="ls -FCG"

export EDITOR=/usr/bin/vim
export GOPATH=$HOME/go

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:$GOPATH/bin

export PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]\$ '

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
