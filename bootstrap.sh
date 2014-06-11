#!/usr/bin/env bash

set -e

DOTFILES_DIR=~/.dotfiles

echo ""
echo "----------> Cloning repository..."
echo ""
git clone https://gitlab.com/jonathanwiesel/osx-provision.git $DOTFILES_DIR

cd $DOTFILES_DIR

echo ""
echo "----------> Installing Homebrew..."
echo ""
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo ""
echo "----------> Installing Homebrew Apps..."
echo ""
brew bundle

echo ""
echo "----------> Installing oh-my-zsh..."
echo ""
curl -L http://install.ohmyz.sh | sh

echo ""
echo "----------> Linking dotfiles configuration..."
echo ""
rcup

echo ""
echo "----------> Reloading ZSH config"
echo ""
source ~/.zshrc

echo ""
echo "----------> Changing shell to ZSH..."
echo ""
chsh -s $(which zsh)

echo ""
echo "----------> Installing Homebrew Casks..."
echo ""
brew bundle Caskfile

echo ""
echo "----------> Installing Atom packages..."
echo ""
apm stars --user jonathanwiesel --install

echo ""
echo "----------> Installing NPM global modules..."
echo ""
npm install -g bower express forever grunt-cli meanio nodemon node-inspector yo

echo ""
echo "----------> Setting up OS X configuration..."
echo ""
source .osx

echo ""
echo ""
echo "----------> Provisioning process complete."
