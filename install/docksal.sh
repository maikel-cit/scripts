#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Install Docksal.
bash <(curl -fsSL https://get.docksal.io)

# Output the installed version.
echo
echo "${YELLOW}"
fin --version
echo "${NC}"
