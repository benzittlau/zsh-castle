# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Fix vi command and rake command
alias vi=vim
alias rake='noglob rake'

# Add some git aliases
alias gc='git checkout'
alias gcob='git checkout -b'
# alias gpr="git symbolic-ref --short HEAD | cat - .github/PULL_REQUEST_TEMPLATE.md | GITHUB_TOKEN=`cat .github_token` hub pull-request -o -F -"
gcot() { git checkout -t origin/$* }
newgemset() { rvm --ruby-version use 2.4.1@$* --create }
alias p4merge='/Applications/p4merge.app/Contents/MacOS/p4merge'

# Use vim mode in the command line
# Disable for now until I can figure out how to setup a bind
# to enter this mode instead of having it on by default
#bindkey -v
#bindkey '^R' history-incremental-search-backward

# Customize to your needs...
export PATH=$PATH:/Users/bzittlau/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Users/bzittlau/.composer/vendor/bin/

# TMUXINATOR AUTO COMPLETION
source ~/.tmuxinator/tmuxinator.zsh

#Set the editor to vim
export EDITOR=vim

# RVM
PS1="\$(~/.rvm/bin/rvm-prompt) $PS1" # Add RVM info to the prompt

#Fix the backspace key
stty erase '^?'

# Configure my go path
export GOPATH="/Users/bzittlau/sandbox/go"

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin" # Add postgres to the path
export PATH="$PATH:$GOPATH/bin" # Add postgres to the path
export PATH="$PATH:/usr/local/sbin" # For rabbitmq

# Enable bash style comments
setopt interactivecomments

# Navigating by words
bindkey "˙" backward-word
bindkey "¬" forward-word

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
