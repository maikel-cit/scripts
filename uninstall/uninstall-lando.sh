#!/bin/bash

# Uninstall lando.
sudo apt purge --yes lando

# Remove installation folders.
rm -rf "$HOME/.lando"

# Remove containers.
docker rm -f $(docker ps --filter label=io.lando.container=TRUE --all -q)
