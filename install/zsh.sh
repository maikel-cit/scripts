#!/bin/bash

# Install Zsh.
sudo apt install --yes zsh

# Install Oh-My-Zsh.
git clone https://github.com/ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh

# Set the default RC file.
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc

# Download the custom theme.
curl -sL https://raw.githubusercontent.com/maikel-cit/scripts/master/.oh-my-zsh/themes/maikel-cit.zsh-theme -o $HOME/.oh-my-zsh/themes/maikel-cit.zsh-theme

# Replace the default theme.
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="maikel-cit"/g' $HOME/.zshrc

# Change your default terminal.
chsh -s /bin/zsh
