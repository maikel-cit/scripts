#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Download the installer.
cd $HOME/Downloads
wget https://files.devwithlando.io/lando-stable.deb

# Install lando.
sudo dpkg -i "lando-stable.deb"

# Remove installation files.
rm "lando-stable.deb"

# Tell the user he should test the installation:
echo
echo "${YELLOW}Lando is installed! Current version is:"
echo
lando version
echo "${NC}"
echo
