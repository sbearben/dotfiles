#!/usr/bin/env bash

# Install mac applications

install() {
  brew install --cask $1
}

install google-chrome
install spotify
install flipper
install visual-studio-code
install android-studio
install slack
install flux

unset install;
