#!/usr/bin/env bash

# Make scripts used in 'crontab' executable
chmod u+x ../brew/brew_update.sh

# Install crontab file
crontab ./crontab
