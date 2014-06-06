#!/usr/bin/env bash

echo "----------> Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "----------> Installing Homebrew Apps..."
brew bundle

# TODO: alfred workflows
echo "----------> Installing Alfred Workflows..."

# TODO: dash docsets
echo "----------> Installing Dash Docsets..."

echo "----------> Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "----------> Changing shell to ZSH..."
chsh -s /bin/zsh

# TODO: dotfiles


echo "----------> Reloading ZSH config"
. ~/.zshrc

echo "----------> Installing Homebrew Casks..."
brew bundle Caskfile

echo "----------> Installing NPM global modules..."
npm install -g bower express forever grunt-cli nodemon node-inspector yo

echo "----------> Setting up custom OS X configuration..."
./.osx

echo "----------> Provisioning process complete."
