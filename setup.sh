#!/usr/bin/env bash

echo "----------> Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "----------> Installing Homebrew Apps..."
brew bundle

echo "----------> Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "----------> Changing shell to ZSH..."
chsh -s /bin/zsh

echo "----------> Linking new shell configuration..."
# TODO: .zshrc

echo "----------> Reloading ZSH config"
. ~/.zshrc

echo "----------> Installing Homebrew Casks..."
brew bundle Caskfile

echo "----------> Setting Atom configuration and packages..."
# TODO: atom config

echo "----------> Installing NPM global modules..."
npm install -g bower express forever grunt-cli meanio nodemon node-inspector yo

echo "----------> Setting up custom OS X configuration..."
./.osx

echo "----------> Provisioning process complete."
