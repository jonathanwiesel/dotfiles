#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

echo "----------> Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "----------> Installing Homebrew Apps..."
brew bundle

echo "----------> Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "----------> Changing shell to ZSH..."
chsh -s $(which zsh)

echo "----------> Linking git configuration..."
# TODO: .gitconfig

echo "----------> Linking shell configuration..."
# TODO: .zshrc

echo "----------> Reloading ZSH config"
source ~/.zshrc

echo "----------> Installing Homebrew Casks..."
brew bundle Caskfile

echo "----------> Linking Atom configuration..."
# TODO: atom config

echo "----------> Installing Atom packages..."
# TODO: until Atom implements `bundle` command, would not be able to install all packages

echo "----------> Installing NPM global modules..."
npm install -g bower express forever grunt-cli meanio nodemon node-inspector yo

echo "----------> Setting up OS X configuration..."
source .osx

echo "----------> Provisioning process complete."
