#!/bin/bash

GITHUB_WORKSPACE=https://github.com/XanMarta/workspace.git

# Clone workspace
mkdir -p ~/.temp
rm -rf ~/.temp/workspace
git clone $GITHUB_WORKSPACE ~/.temp/workspace

# Backup old configuration
if [ -d ~/.config/nvim ]; then
  rm -rf ~/.config/nvim.bk/
  mv ~/.config/nvim ~/.config/nvim.bk
fi

# Copy new configuration
cp ~/.temp/workspace/lazyvim/nvim ~/.config/nvim -r

# Remove workspace
rm -rf ~/.temp/workspace

