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

# Backup old configuration
echo "----- Backing up old configuration -----"
if [ -d ~/.config/nvim ]; then
  rm -rf ~/.config/nvim.bk/
  mv ~/.config/nvim ~/.config/nvim.bk
fi

# Copy new configuration
echo "----- Copying new configuration files -----"
cp -r ~/.temp/workspace/lazyvim/nvim ~/.config/nvim

