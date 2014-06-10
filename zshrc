# ---- Environment set by OS X personal provision ----

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="af-magic"

# oh-my-zsh plugins
plugins=(git brew npm sudo)

source $ZSH/oh-my-zsh.sh

# search for rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR="atom --wait"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH="/usr/local/heroku/bin:/usr/local/bin:$PATH"
