#!/usr/bin/env bash

set -e

DOTFILES_DIR=~/.dotfiles
ITERM_SETTINGS=com.googlecode.iterm2.plist

echo

if ! hash gcc 2>/dev/null; then
    echo "----------> You must install Xcode command-line tools first to proceed. Finishing..."
    exit
fi

if [ ! -d "$DOTFILES_DIR" ]; then
    echo "----------> Downloading repository..."
    echo
    git clone https://github.com/jonathanwiesel/dotfiles.git $DOTFILES_DIR
    cd $DOTFILES_DIR
else
    echo "----------> $DOTFILES_DIR is already present."
    read -p "Are you sure the directory $DOTFILES_DIR contains this repository? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "---------->  No need to clone. Checking for updates..."
        cd $DOTFILES_DIR
        git pull
    else
        exit
    fi
fi

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

if ! hash zsh 2>/dev/null; then
    echo "----------> You must the ZSH shell to proceed. Finishing..."
    exit
fi

echo
echo "----------> Installing oh-my-zsh..."
echo
if [ ! -d ~/.oh-my-zsh ]; then
    curl -L http://install.ohmyz.sh | sh
else
    echo "----------> oh-my-zsh is already installed, skipping..."
fi


echo
echo "----------> Linking dotfiles configuration..."
echo
rcup -d $DOTFILES_DIR rcrc
rcup -d $DOTFILES_DIR

echo
echo "----------> Linking iTerm config..."
echo
ln -sfn $ITERM_SETTINGS ~/Library/Preferences/$ITERM_SETTINGS

echo
echo "----------> Changing shell to ZSH..."
echo
chsh -s $(which zsh)

echo
echo "----------> Reloading ZSH config"
echo
source ~/.zshrc

echo
read -p "Do you want to install default Casks? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "----------> Installing Homebrew Casks..."
    echo
    brew bundle Caskfile
else
    echo "----------> Skipping cask installation"
fi


echo
echo "----------> Installing Atom packages..."
echo
apm stars --user jonathanwiesel --install

echo
echo "----------> Installing NPM global modules..."
echo
npm install -g bower express forever grunt-cli meanio nodemon node-inspector yo

read -p "----------> Would you like to setup the custom OS X configuration? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "----------> Setting up OS X config..."
    source osx
fi

echo
echo
echo "----------> Provisioning process complete."
