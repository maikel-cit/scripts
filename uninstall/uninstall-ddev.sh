#!/bin/bash

# Remove all hosts.
ddev hostname --remove-inactive

# Remove installation folders.
rm -r ~/.ddev

# Remove containers.
docker volume rm $(docker volume ls | awk '/ddev|-mariadb/ { print $2 }')
