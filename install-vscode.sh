#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Refresh the package index.
sudo apt update

# Install requirements.
sudo apt install --yes curl apt-transport-https gpg

# Adding repository and key.
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Installing Visual Studio Code.
sudo apt update
sudo apt install --yes code

echo "${YELLOW}"
code --version
echo "${NC}"
echo
