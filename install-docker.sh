#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

# Guidelines used to create this script:
# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository

# Begins the script output:
echo
echo "Installing DOCKER..."

# Get the current architecture:
ARCHITECTURE=$(dpkg --print-architecture)

# Check if this computer's architecture is not supported:
if [[ ${ARCHITECTURE} != "s390x" && ${ARCHITECTURE} != "armhf" && ${ARCHITECTURE} != "amd64" ]]; then
  # Explain to the user what's is happening:
  echo "The '${ARCHITECTURE}' is not supported by DOCKER."
  echo "exiting..."
  # End this script execution:
  exit
fi

# Go to the home folder:
cd ~

# Refresh the package index.
sudo apt update

# Uninstall old versions. The contents of /var/lib/docker/ are preserved.
sudo apt purge --yes docker docker-engine docker.io docker-ce docker-ce-cli

# Install packages to allow apt to use a repository over HTTPS:
sudo apt install --yes apt-transport-https ca-certificates curl software-properties-common gnupg

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that the key fingerprint is: 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
FINGERPRINT=$(sudo apt-key fingerprint 0EBFCD88 | grep "9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88")

# If we failed to match the fingerprint:
if [[ ${FINGERPRINT} == "" ]]; then
  # Send an error to the user:
  echo "The fingerprint was not found or does not match the one saved on this script!"
  echo "exiting..."
  # End this script execution:
  exit
fi

# Add the repository based on the architecture
sudo add-apt-repository "deb [arch=${ARCHITECTURE}] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the apt package index:
sudo apt-get update
sudo apt-get autoclean

# Install DOCKER:
sudo apt-get install -y docker-ce

# Add the current user to the docker group:
sudo usermod -a -G docker $USER

# Get the latest DOCKER-COMPOSE:
COMPOSELATEST=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest)
COMPOSEVERSION=$(echo ${COMPOSELATEST} | sed 's:.*/::')
sudo curl -L https://github.com/docker/compose/releases/download/${COMPOSEVERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Tell the user he should test the installation:
echo
echo "${YELLOW}Test it with the 'hello world' command:"
# Adapt the command to the right architecture:
if [[ ${ARCHITECTURE} == "armhf" ]]; then
  echo "sudo docker run armhf/hello-world"
else
  echo "sudo docker run hello-world"
fi
echo
echo
echo "Docker is installed! Current version is:"
echo
docker --version
docker-compose --version
echo "${NC}"
echo
