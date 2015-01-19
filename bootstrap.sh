#!/usr/bin/env bash

set -e

DOTFILES_DIR=~/.dotfiles
ITERM_SETTINGS=com.googlecode.iterm2.plist
GOPATH=$HOME/.go

echo

if ! hash gcc 2>/dev/null; then
    echo "----------> You must install Xcode command-line tools first to proceed. Finishing..."
    exit
fi

if [ ! -d "$DOTFILES_DIR" ]; then
    echo "----------> Downloading repository..."
    echo
    git clone https://github.com/jonathanwiesel/dotfiles.git $DOTFILES_DIR
else
    echo "----------> $DOTFILES_DIR is already present."
    read -p "Are you sure the directory $DOTFILES_DIR contains this repository? [y/n] " -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "----------> No need to clone. Checking for updates..."
        git -C $DOTFILES_DIR pull
    else
        exit
    fi
fi

echo

if hash brew 2>/dev/null; then
    echo "----------> Homebrew is already installed, skipping..."
else
    echo "----------> Installing Homebrew..."
    echo
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo
    brew doctor

    if [ $? -ne 0 ]; then
      echo "You need to fix the warnings/errors thrown by brew doctor. Then run the script again."
    fi
fi

echo
echo "----------> Installing Homebrew Apps..."
echo
source $DOTFILES_DIR/brew/Brewfile

if ! hash zsh 2>/dev/null; then
    echo
    echo "----------> ZSH is not present, Installing..."
    echo
    brew install zsh

    echo "----------> Provide password to link ZSH to shell list: "
    sudo sh -c 'echo $(which zsh) >> /etc/shells'
fi

if [ ! -d "$GOPATH" ]; then
  mkdir $GOPATH
fi

echo
echo "----------> Linking dotfiles configuration..."
ln -sfn $DOTFILES_DIR/zsh/zshrc $HOME/.zshrc
ln -sfn $DOTFILES_DIR/git/gitconfig $HOME/.gitconfig

echo
echo "----------> Linking iTerm config..."
ln -sfn $DOTFILES_DIR/iterm/$ITERM_SETTINGS ~/Library/Preferences/$ITERM_SETTINGS

echo
echo "----------> Installing NPM global modules..."
echo
npm install -g awm bower express-generator forever grunt-cli mean-cli nodemon node-inspector sails yo

echo
read -p "----------> Would you like to setup the custom OS X configuration? [y/n] " -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "----------> Setting up OS X config..."
    $DOTFILES_DIR/system/osx
else
    echo "----------> Skipping OS X config..."
fi

echo
read -p "Do you want to install default Casks? [y/n] " -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "----------> Installing Homebrew Casks..."
    echo
    source $DOTFILES_DIR/brew/Caskfile
else
    echo "----------> Skipping cask installation..."
fi

echo
if ! hash apm 2>/dev/null; then
    echo "----------> Atom is not installed. Skipping atom packages installation..."
else
    echo "----------> Installing Atom packages..."
    echo
    apm stars --user jonathanwiesel --install
fi

echo
read -p "Do you want to install Alfred workflows? (Remeber to enable PowerPack before this!) [y/n] " -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    source $DOTFILES_DIR/alfred/workflows.sh
else
    echo "----------> Skipping Alfred workflows..."
fi

if [[ "$SHELL" != */zsh ]]; then
    echo
    echo "----------> Changing shell to ZSH..."
    echo
    chsh -s $(which zsh)
fi

echo
echo
echo "----------> Provisioning process complete."
