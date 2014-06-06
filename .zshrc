# ---- Environment set by OS X personal provision ----

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="af-magic"

# oh-my-zsh plugins
plugins=(git brew npm sudo)

source $ZSH/oh-my-zsh.sh

# Git aliases
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit -m "
alias gp="git push"
alias gpl="git pull"
alias gch="git checkout"
alias gb="git branch"
alias gr="git remote"

# Vagrant aliases
alias vu="vagrant up"
alias vh="vagrant halt"
alias vd="vagrant destroy"
alias vss="vagrant ssh"
alias vb="vagrant box"
alias vin="vagrant init"
alias vsu="vagrant suspend"
alias vre="vagrant resume"
alias vs="vagrant status"

# search for rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR="atom --wait"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH="/usr/local/heroku/bin:/usr/local/bin:$PATH"
