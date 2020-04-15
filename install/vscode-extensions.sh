#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)

# PHP
echo "${YELLOW}Installing PHP extensions${NC}"
code --install-extension bmewburn.vscode-intelephense-client \
     --install-extension felixfbecker.php-intellisense

# Drupal 8
echo "${YELLOW}Installing Drupal 8 extensions${NC}"
code --install-extension marcostazi.vs-code-drupal \
     --install-extension dssiqueira.drupal-8-snippets \
     --install-extension tsega.drupal-8-twig-snippets \
     --install-extension tsega.drupal-8-javascript-snippets

# HTML & CSS
echo "${YELLOW}Installing HTML & CSS extensions${NC}"
code --install-extension ecmel.vscode-html-css \
     --install-extension abusaidm.html-snippets

# Twig
echo "${YELLOW}Installing Twig extensions${NC}"
code --install-extension mblode.twig-language-2

# YAML
echo "${YELLOW}Installing YAML extensions${NC}"
code --install-extension redhat.vscode-yaml

# Automated Tests
echo "${YELLOW}Installing Automated Tests extensions${NC}"
code --install-extension emallin.phpunit \
     --install-extension recca0120.vscode-phpunit \
     --install-extension onecentlin.phpunit-snippets \
     --install-extension ryanluker.vscode-coverage-gutters \
     --install-extension hbenl.vscode-test-explorer

# Formatters, Linters and Sniffers
echo "${YELLOW}Installing Formatters, Linters and Sniffers extensions${NC}"
code --install-extension ikappas.phpcs \
     --install-extension streetsidesoftware.code-spell-checker \
     --install-extension dbaeumer.vscode-eslint \
     --install-extension cerzat43.twigcs

# Tools
echo "${YELLOW}Installing Tools extensions${NC}"
code --install-extension ikappas.composer \
     --install-extension nickdodd79.gulptasks \
     --install-extension spmeesseman.vscode-taskexplorer \
     --install-extension tanato.vscode-gulp \
     --install-extension eamodio.gitlens

# Documentation
echo "${YELLOW}Installing Documentation extensions${NC}"
code --install-extension neilbrayfield.php-docblocker

# Debugger
echo "${YELLOW}Installing Debugger extensions${NC}"
code --install-extension msjsdiag.debugger-for-chrome \
     --install-extension felixfbecker.php-debug

echo
echo "${RED}If any extensions were already installed and disabled, you must enable them manually.${NC}"
echo
echo "${YELLOW}Done!${NC}"
