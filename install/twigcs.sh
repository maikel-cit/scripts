#!/bin/bash

# Install requirements.
sudo apt install --yes php-mbstring

# Installing Twig Code Sniffer.
composer global require friendsoftwig/twigcs
