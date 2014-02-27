# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# man zshoptions for zsh options...
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# kphoen, miloshadzic, sorin


POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}∆%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"

alias s="source"
alias ssh-smp="ssh -i smpdev.pem smpdev@noc01.smp.cx"
# rework git pull to git pull --rebase

alias gpr="git pull --rebase"

alias ctags="`brew --prefix`/bin/ctags"

# For Older version of OpenSSL located in /usr/local/openssl
export PATH=/usr/local/openssl/bin:$PATH
export PATH=/usr/local/bin/ctags:$PATH
export MANPATH=/usr/local/openssl/ssl/man:$MANPATH
# A bash function to display a growl notification using iTerm's magic
# escape sequence. This version will work under screen.

growl() {
      local msg="\\e]9;\n\n${*}\\007"
      case $TERM in
        screen*)
          echo -ne '\eP'${msg}'\e\\' ;;
        *)
          echo -ne ${msg} ;;
      esac
      return
}

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
  DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
  COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby sublime rails zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/tlandon/.rvm/gems/ruby-1.9.3-p484@digital/bin:/Users/tlandon/.rvm/gems/ruby-1.9.3-p484@global/bin:/Users/tlandon/.rvm/rubies/ruby-1.9.3-p484/bin:/usr/local/openssl/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# init z   https://github.com/rupa/z on GitHeezy
. ~/code/z/z.sh

# Add pygmentized cat
alias cat='pygmentize -g'

# Update and bundle install for Vundle/Vim
alias upvim="vim -u ~/.bundles.vim +BundleInstall! +q"

# upgrade zsh

alias upz="upgrade_oh_my_zsh"

DEFAULT_USER=`whoami`

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
