alias rm="rm -i"
alias clr=clear
alias h=history
alias grep='grep --color=auto'
alias ls="ls -FGC"
alias cctags="ctags \$(find -regex \".*\.\(h\|S\|\c\)\")"

export EDITOR=/usr/bin/vim
export GOPATH=$HOME/go
export SCALA_HOME=/opt/scala

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$SCALA_HOME/bin
export GOOGLE_APPLICATION_CREDENTIALS=/Users/varun/Code/greylock/credentials.json
export PYTHONPATH=/Library/Python/2.7/site-packages

export PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Uncomment based on mac/linux
if [ -f ~/.bashrc ];
    then source ~/.bashrc
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.aliases ];
    then . ~/.aliases
fi

if [ -f ~/.profile ];
    then . ~/.profile
fi
