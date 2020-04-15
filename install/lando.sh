#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Download the installer.
curl -sL https://files.devwithlando.io/lando-stable.deb -o $HOME/Downloads/lando-stable.deb

# Install lando.
sudo dpkg -i "${HOME}/Downloads/lando-stable.deb"

# Remove installation files.
rm "${HOME}/Downloads/lando-stable.deb"

# Tell the user he should test the installation:
echo
echo "${YELLOW}Lando is installed! Current version is:"
echo
lando version
echo "${NC}"
echo
