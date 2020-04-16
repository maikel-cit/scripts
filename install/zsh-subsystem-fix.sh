#!/bin/bash

# Append the ZSH execution to the end of the BASHRC file.
sudo tee -a $HOME/.bashrc > /dev/null <<EOT

# Checks whether output is a terminal.
if [ -t 1 ]; then
   exec zsh
fi
EOT
