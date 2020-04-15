#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Download the PPA setup.
curl -sL https://deb.nodesource.com/setup_10.x -o $HOME/Downloads/nodesource_setup.sh

# Install the PPA.
sudo bash $HOME/Downloads/nodesource_setup.sh

# Remove the installation file.
rm $HOME/Downloads/nodesource_setup.sh

# Install NODEJS and dependencies.
sudo apt install --yes build-essential nodejs

echo
echo "${YELLOW}NodeJS: "
nodejs -v

echo
echo "NPM: "
npm -v

echo "${NC}"
