export PS1="\u.\w> "

alias rm="rm -i"
alias ls="ls -FC"
alias clr=clear
alias h=history
alias grep='grep --color=auto'

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:$GOPATH/bin

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd


export EDITOR=/usr/bin/vim
export GOPATH=$HOME/go

set -o vi
bind -m vi-insert "\C-l":clear-screen

alias subl="sublime"

alias ssh-mit="ssh vmohan@athena.dialup.mit.edu"
alias ssh-httpd="ssh httpd@172.16.238.128"
alias ssh-httpdw="ssh -L localhost:8080:localhost:8080 httpd@172.16.238.128"
alias ssh-csail="ssh vamohan@login.csail.mit.edu"
alias ssh-lanka="ssh vamohan@lanka.csail.mit.edu"
