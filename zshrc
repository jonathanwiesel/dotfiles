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

# exports
[[ -f ~/.exports ]] && source ~/.exports

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
