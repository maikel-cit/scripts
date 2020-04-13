#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Refresh the package index.
sudo apt update

# Installing packages.
sudo apt install --yes git
