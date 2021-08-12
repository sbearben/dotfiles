#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Save Homebrew's installed location.
BREW_PREFIX=$(brew --prefix)

# Install some useful binaries (not many right now)
brew install tldr
brew install dockutil

# Remove outdated versions from the cellar.
brew cleanup
