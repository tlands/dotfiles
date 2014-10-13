[ -n "$PS1" ] && source ~/.bash_profile
alias mvim="reattach-to-user-namespace mvim"
alias vim="reattach-to-user-namespace vim"





PATH=/usr/local/bin/ctags:/usr/local/openssl/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

