export PS1="\u.\w> "

alias rm="rm -i"
#alias ls="ls -FC --color"
alias ls="ls -FC"
alias m=more
alias clr=clear
alias h=history
alias dir='du -ks * | sort -nr'
alias xemacs="open -a emacs"
alias apaches="sudo /opt/local/apache2/bin/apachectl"
alias mysqls="sudo /usr/local/mysql/support-files/mysql.server"
alias opensql="/usr/local/mysql/bin/mysql -u root -h localhost -p"
alias tm="tmux"
alias ssh-mit="ssh vmohan@athena.dialup.mit.edu"
alias sshx-mit="ssh -X vmohan@athena.dialup.mit.edu"
alias ssh-mitw="ssh -L localhost:5555:localhost:5555 vmohan@athena.dialup.mit.edu"
alias ssh-httpd="ssh httpd@172.16.238.128"
alias ssh-httpdw="ssh -L localhost:8080:localhost:8080 httpd@172.16.238.128"
alias ssh-csail="ssh vamohan@login.csail.mit.edu"
alias ssh-lanka="ssh vamohan@lanka.csail.mit.edu"
alias subl="sublime"
alias inote='ipython notebook --ip 127.0.0.1 --notebook-dir=~/Coursework/Fall\ 2015/6338/'

alias grep='grep --color=auto'

export PATH=$PATH:/Users/varun/temp
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/Julia-0.4.1.app/Contents/Resources/julia/bin
export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd


export EDITOR=/usr/bin/vim
export GOPATH=$HOME/go
#export VISUAL=/usr/bin/vim
#set -o vi
#bind -m vi-insert "\C-l":clear-screen
#bind -m vi-command "\C-l":clear-screen
#bind -m vi-command "v":vi-vusual-mode

#stty susp undef
#bind '"\C-z":"fg\015"'
#bind '"\C-x":"fg\015"'

set -o vi
bind -m vi-insert "\C-l":clear-screen
