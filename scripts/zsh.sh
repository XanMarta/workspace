#!/bin/bash

GITHUB_WORKSPACE=https://github.com/XanMarta/workspace.git

# Clone workspace
echo "----- Cloning workspace -----"
mkdir -p ~/.temp
if [ ! -d ~/.temp/workspace ]; then
  git clone $GITHUB_WORKSPACE ~/.temp/workspace
else
  git -C ~/.temp/workspace pull origin master
fi

# Copy Zsh extended
echo "----- Copying Zsh extended -----"
if ! grep -q "<.zshrc.extended>" ~/.zshrc; then
  cat ~/.temp/workspace/zsh/.zshrc >> ~/.zshrc
fi
if [ -f ~/.zshrc.extended.sh ]; then
  mv ~/.zshrc.extended.sh ~/.zshrc.extended.sh.bk
fi
cp ~/.temp/workspace/zsh/.zshrc.extended.sh ~/.zshrc.extended.sh

# Copy tmux.conf
echo "----- Copying tmux conf -----"
if [ -f ~/.tmux.conf ]; then
  mv ~/.tmux.conf ~/.tmux.conf.bk
fi
cp ~/.temp/workspace/tmux/.tmux.conf ~/.tmux.conf

# Copy alacritty config
if [ ! -d ~/.config/alacritty ]; then
  cp ~/.temp/workspace/alacritty ~/.config/alacritty -r
fi
if [ ! -d ~/.config/alacritty/themes ]; then
  mkdir -p ~/.config/alacritty/themes
  git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
fi

