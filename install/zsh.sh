#!/bin/bash

# Install Zsh.
sudo apt install --yes zsh

# Install Oh-My-Zsh.
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# Set the default RC file.
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# Enable the ZSH terminarl.
chsh -s $(which zsh)
