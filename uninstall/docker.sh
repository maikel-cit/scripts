#!/bin/bash

# Removing lingering containers
docker rm -f $(docker ps --all -q)

# Uninstall docker.
sudo apt purge --yes docker docker-engine docker.io docker-ce docker-ce-cli

# Delete the docker user group.
sudo groupdel docker

# Remove installation folders.
sudo rm /etc/apparmor.d/docker
sudo rm -rf /etc/docker
sudo rm -rf /var/lib/docker
sudo rm -rf /var/run/docker.sock

# Remove fingerprint key from docker.
sudo apt-key del 0EBFCD88

# Remove the source entry.
sudo rm /etc/apt/sources.list.d/docker.list /etc/apt/sources.list.d/docker.list.save

# Clearing packages.
sudo apt-get autoremove --yes
sudo apt-get autoclean
sudo apt update
