# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/brianhan/.rbenv/shims:/Users/brianhan/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/brianhan/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# VIM
export EDITOR=vim

# Node
alias nom="nodemon ./bin/www"

# Git
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff -w"
alias gds="git diff -w --staged"
alias gl="git log --pretty=format:'%C(red)%d%Creset %C(yellow)%h%Creset %s' --graph --abbrev-commit"
alias glog="git log --pretty=format:'%C(red)%d%Creset %C(yellow)%h%Creset %s' --graph --abbrev-commit"
alias gpro="git pull --rebase origin master"
alias gpru="git pull --rebase upstream master"
alias gr="git remote"
alias gst="git status"

# Shell
alias obash="atom ~/.bash_profile"
alias sbash="source ~/.bash_profile"
alias ozsh="atom ~/.zshrc"
alias szsh="source ~/.zshrc"

# Bower Registry SSH
alias rtpbox="ssh ibmadmin@9.37.228.216"

# Hub
eval "$(hub alias -s)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH:"

# Gifs
alias gif-add="cd ~/gifs && git add . && git commit -m 'adding GIFs' && git push origin master"
alias gif-search="~/gifs ls | grep"

source $HOME/env/Bluemix.sh
