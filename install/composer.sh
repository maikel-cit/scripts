#!/bin/bash

# Refresh the package index.
sudo apt update

# Install requirements.
sudo apt install --yes wget php-cli php-zip unzip

# Install composer.
curl -sS https://getcomposer.org/installer | sudo php && sudo mv composer.phar /usr/local/bin/composer

composer --version
