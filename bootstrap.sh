#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

echo "----------> Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "----------> Installing Homebrew Apps..."
brew bundle

echo "----------> Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "----------> Linking dotfiles configuration..."
rcup

echo "----------> Reloading ZSH config"
source ~/.zshrc

echo "----------> Changing shell to ZSH..."
chsh -s $(which zsh)

echo "----------> Installing Homebrew Casks..."
brew bundle Caskfile

echo "----------> Installing Atom packages..."
apm stars --user jonathanwiesel --install

echo "----------> Installing NPM global modules..."
npm install -g bower express forever grunt-cli meanio nodemon node-inspector yo

echo "----------> Setting up OS X configuration..."
source .osx

echo "----------> Provisioning process complete."
