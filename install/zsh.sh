#!/bin/bash

# Install Zsh.
sudo apt install --yes zsh

# Install Oh-My-Zsh.
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh

# Set the default RC file.
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc

# Download the custom theme.
wget https://raw.githubusercontent.com/maikel-cit/scripts/master/.oh-my-zsh/themes/maikel-cit.zsh-theme -O $HOME/.oh-my-zsh/themes/maikel-cit.zsh-theme

# Replace the default theme.
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="maikel-cit"/g' $HOME/.zshrc

# Enable the ZSH terminarl.
chsh -s $(which zsh)

# Ensure ZSH execution
echo "" >> $HOME/.bashrc
echo "exec zsh" >> $HOME/.bashrc

# Execute ZSH
exec zsh
