export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export EDITOR=atom
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# if go is installed export GOPATH
if [[ ( -e `which go` && -e "$HOME/.go" ) ]]; then export GOPATH=$HOME/.go && export PATH="$GOPATH/bin:$PATH"; fi

# if exists, add path for homebrew installed python.
if [[ -e "/usr/local/share/python" ]]; then export PATH="/usr/local/share/python:$PATH"; fi

# add for homebrew
export PATH="/usr/local/bin:$PATH"

# search for rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# remove duplicates from PATH.
typeset -U PATH
