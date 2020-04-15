#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)

# Install requirements.
sudo apt install --yes php-xml php-mbstring

# Install PHP Code Sniffer.
echo "${YELLOW}Installing PHP Code Sniffer, Drupal Code Standard${NC}"
composer global require drupal/coder
sudo ln -s ~/.composer/vendor/bin/phpcs /usr/local/bin/phpcs

# Configure Drupal Code Standard.
phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer

echo
echo "${YELLOW}"
phpcs -i
echo "${NC}"
