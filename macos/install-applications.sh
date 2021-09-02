#!/usr/bin/env bash

# Install mac applications

_install() {
  brew install --cask "$1"
}

install_applications() {
    _install android-studio
    _install flipper
    _install flux
    _install google-chrome
    _install slack
    _install spotify
    _install visual-studio-code
}
