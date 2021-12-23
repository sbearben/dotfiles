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
    # Tool for OS X automation: https://www.hammerspoon.org/
    _install hammerspoon
    # Open source bettersnaptool alternative
    _install rectangle
    _install slack
    _install spotify
    _install visual-studio-code
}
