#!/bin/bash

# No Color
NC=$(tput sgr0)
# Colors
YELLOW=$(tput setaf 3)

composer global require drush/drush

sudo ln -s ~/.composer/vendor/drush/drush/drush /usr/local/bin/drush
