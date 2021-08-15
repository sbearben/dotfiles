#!/usr/bin/env bash

# Install mac applications

_install() {
  brew install --cask $1
}

install_applications() {
    _install google-chrome
    _install spotify
    _install flipper
    _install visual-studio-code
    _install android-studio
    _install slack
    _install flux
}

