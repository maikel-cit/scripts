#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)

# Debugger
echo "${YELLOW}Installing additional extensions${NC}"
code --install-extension donjayamanne.githistory \
     --install-extension janbn.git-last-commit-message \
     --install-extension wayou.vscode-todo-highlight \
     --install-extension jrebocho.vscode-random

echo
echo "${RED}If any extensions were already installed and disabled, you must enable them manually.${NC}"
echo
echo "${YELLOW}Done!${NC}"
