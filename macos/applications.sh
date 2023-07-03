#!/usr/bin/env bash
#
# Install mac applications

function install_applications() {
  local -a apps=(
    '1password'
    'android-studio'
    'flipper'
    'flux'
    'google-chrome'
    'hammerspoon'
    # Open source bettersnaptool alternative
    'rectangle'
    'slack'
    'spotify'
    'visual-studio-code'
  )

  for app in "${apps[@]}"; do
    brew install --cask "$app" || true
  done
}
