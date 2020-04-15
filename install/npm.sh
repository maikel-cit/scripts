#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)

# Install NODEJS and dependencies.
sudo apt install --yes build-essential

# Install NVM.
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# Add the system environment to the bashrc file.
sudo tee -a $HOME/.bash_aliases > /dev/null <<EOT

if [ -d "\$HOME/.nvm" ]; then
  export NVM_DIR="\$HOME/.nvm"
  [ -s "\$NVM_DIR/nvm.sh" ] && \. "\$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "\$NVM_DIR/bash_completion" ] && \. "\$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
EOT

# Load system environment.
source $HOME/.profile

# Install latest LTS version.
nvm install 'lts/*' --latest-npm

echo
echo "${YELLOW}NodeJS: "
node --version

echo
echo "NPM: "
npm --version

echo
echo "NVM: "
nvm --version

echo
echo "${YELLOW}Try and run 'node --version', if node cannot be found run 'source \$HOME/.profile' to update your current terminal.${NC}"
echo
