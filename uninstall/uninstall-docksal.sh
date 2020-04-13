#!/bin/bash

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
