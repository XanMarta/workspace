#!/bin/bash

GITHUB_WORKSPACE=https://github.com/XanMarta/workspace.git

# Clone workspace
echo "----- Cloning workspace -----"
mkdir -p ~/.temp
rm -rf ~/.temp/workspace
git clone $GITHUB_WORKSPACE ~/.temp/workspace

# Backup old configuration
echo "----- Backing up old configuration -----"
if [ -d ~/.config/nvim ]; then
  rm -rf ~/.config/nvim.bk/
  mv ~/.config/nvim ~/.config/nvim.bk
fi

# Copy new configuration
echo "----- Copying new configuration files -----"
cp ~/.temp/workspace/lazyvim/nvim ~/.config/nvim -r

# Remove workspace
echo "----- Removing workspace -----"
rm -rf ~/.temp/workspace

