#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"

echo "----------> Provinsing process started..."
echo ""
echo "----------> Installing Homebrew..."
echo ""
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo ""
echo "----------> Installing Homebrew Apps..."
brew bundle

echo ""
echo "----------> Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo ""
echo "----------> Linking dotfiles configuration..."
rcup

echo ""
echo "----------> Reloading ZSH config"
source ~/.zshrc

echo ""
echo "----------> Changing shell to ZSH..."
chsh -s $(which zsh)

echo ""
echo "----------> Installing Homebrew Casks..."
brew bundle Caskfile

echo ""
echo "----------> Installing Atom packages..."
apm stars --user jonathanwiesel --install

echo ""
echo "----------> Installing NPM global modules..."
npm install -g bower express forever grunt-cli meanio nodemon node-inspector yo

echo ""
echo "----------> Setting up OS X configuration..."
source .osx

echo ""
echo ""
echo "----------> Provisioning process complete."
