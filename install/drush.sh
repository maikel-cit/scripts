#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Install requirements.
sudo apt install --yes php-xml

# Install Drush commandline tool.
composer global require drush/drush

# Create symbolic link to execute it.
sudo ln -s ~/.composer/vendor/drush/drush/drush /usr/local/bin/drush

# Fix permissions
sudo chmod +x /usr/local/bin/drush

echo
drush --version
