#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Install NODEJS and dependencies.
sudo apt install --yes build-essential

# Install NVM.
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Reload system environment.
source ~/.profile

# Install latest LTS version.
nvm install 'lts/*' --latest-npm

echo
echo "${YELLOW}NodeJS: "
nodejs --version

echo
echo "NPM: "
npm --version

echo
echo "NVM: "
nvm --version

echo "${NC}"
