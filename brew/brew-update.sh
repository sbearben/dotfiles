#!/usr/bin/env bash

brew update

OUTDATED_THRESHOLD=10
BREW_UPDATE_LOG_FILE=.brew-update.log
num_outdated_formulae=$(brew outdated | wc -l | tr -d ' \t')

if [[ ${num_outdated_formulae} -gt OUTDATED_THRESHOLD ]]; then
  brew upgrade && brew cleanup
  touch $BREW_UPDATE_LOG_FILE
  # Log the run time and threshold - can use this to see how often `brew upgrade` gets run using this threshold
  echo -e "$(date -u +%Y-%m-%dT%H:%M:%S)\t$OUTDATED_THRESHOLD" >> $BREW_UPDATE_LOG_FILE
fi

unset num_outdated_formulae
unset BREW_UPDATE_LOG_FILE
unset OUTDATED_THRESHOLD
