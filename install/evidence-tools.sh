#!/bin/bash

# Add OBS PPA.
sudo add-apt-repository ppa:obsproject/obs-studio

# Update the application caches.
sudo apt update

# Install evidence tools from APT.
sudo apt install --yes shutter screenruler obs-studio
