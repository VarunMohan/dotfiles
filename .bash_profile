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
alias ssh-mit="ssh -X vmohan@athena.dialup.mit.edu"
alias ssh-httpd="ssh httpd@172.16.238.128"
#alias julia="exec '/Applications/Julia-0.3.11.app/Contents/Resources/julia/bin/julia'"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias inote='ipython notebook --ip 127.0.0.1 --notebook-dir=~/Coursework/Fall\ 2015/6337/'

alias grep='grep --color=auto'

export PATH=$PATH:/Users/varun/temp
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH
export PATH=$PATH:/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/

export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd


export EDITOR=/usr/bin/vim
export VISUAL=vim
