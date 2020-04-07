#!/bin/bash

#
# PURGING DDEV
#

# Remove all hosts.
ddev hostname --remove-inactive

# Remove installation folders.
rm -r ~/.ddev

#
# PURGING DOCKSAL
#

# Removing dangling images.
fin cleanup

# List your hosts entry.
fin hosts
# Remove any host entry you won't use anymore.
fin hosts remove qa.localhost

# Stop the service.
fin system stop

# Remove installation folders.
rm -rf "$HOME/.docksal"
sudo rm -f /usr/local/bin/fin

#
# PURGING LANDO
#

# Uninstall lando.
sudo apt purge --yes lando

# Remove installation folders.
rm -rf "$HOME/.lando"

#
# PURGING DOCKER
#

# Removing lingering Lando containers
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
