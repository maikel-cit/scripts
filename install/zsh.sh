#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)

# Save the current default shell.
CURRENT_SHELL=$(echo $SHELL)

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

# Change your default shell.
sudo chsh -s $(which zsh) $USER

# Check if the default shell was not updated
DEFAULT_SHELL=$(echo $SHELL)

if [ "${DEFAULT_SHELL}" == "${CURRENT_SHELL}" ]; then
  echo
  echo "${RED}Could not update your default shell to ZSH. Please refer to the troubleshooting in the documentation.${NC}"
  echo
fi
