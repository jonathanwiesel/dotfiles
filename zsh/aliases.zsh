# Git aliases
alias gs="git status -s"
alias ga="git add"
alias gaa="git add --all"
alias gc="gitmoji -c "
alias gp="git push"
alias gpsu="git push --set-upstream origin"
alias gpl="git pull"
alias gch="git checkout"
alias gb="git branch"
alias gr="git remote"
alias gl="git log --oneline --decorate --all --graph"
alias gd="git diff --color | diff-so-fancy"
alias gdt="git difftool"

# Homebrew aliases
alias bc="brew --cask"
alias bs="brew services"
alias bl="brew list"

# Easier navigation
alias -- -="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias _=sudo

alias ls='ls -G'
alias reload!=". ~/.zshrc"
alias bower="noglob bower"

# Salesforce DX
alias dxp="sf force source push"
alias dxpl="sf force source pull"
alias dxco="sf force org create"
alias dxoo="sf force org open"
alias dxlo="sf force org list"
alias dxt="sf force apex test run --resultformat human --synchronous --loglevel error --codecoverage"