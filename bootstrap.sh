#!/usr/bin/env bash

set -e

DOTFILES_DIR=~/.dotfiles

if [ ! -d "$DOTFILES_DIR" ]; then
    echo "----------> Cloning repository..."
    echo
    git clone https://gitlab.com/jonathanwiesel/osx-provision.git $DOTFILES_DIR
else
    echo "----------> $DOTFILES_DIR is present."
    read -p "Are you sure the directory $DOTFILES_DIR contains this repository? [y/n]" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Repository is present, no need to clone. Continuing..."
    else
        exit
    fi
fi

cd $DOTFILES_DIR

echo
echo "----------> Installing Homebrew..."
echo
if hash brew 2>/dev/null; then
    echo "----------> Homebrew is already installed, skipping..."
else
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

echo
echo "----------> Installing Homebrew Apps..."
echo
brew bundle

echo
echo "----------> Installing oh-my-zsh..."
echo
if [ ! -n "$ZSH" ]; then
    curl -L http://install.ohmyz.sh | sh
else
    echo "----------> oh-my-zsh is already installed, skipping..."
fi


echo
echo "----------> Linking dotfiles configuration..."
echo
rcup

echo
echo "----------> Reloading ZSH config"
echo
source ~/.zshrc

echo
echo "----------> Changing shell to ZSH..."
echo
chsh -s $(which zsh)

echo
echo "----------> Installing Homebrew Casks..."
echo
brew bundle Caskfile

echo
echo "----------> Installing Atom packages..."
echo
apm stars --user jonathanwiesel --install

echo
echo "----------> Installing NPM global modules..."
echo
npm install -g bower express forever grunt-cli meanio nodemon node-inspector yo

echo
echo "----------> Setting up OS X configuration..."
echo
source .osx

echo
echo
echo "----------> Provisioning process complete."
