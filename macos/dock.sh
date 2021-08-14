#!/usr/bin/env bash

dockutil --no-restart --remove all
dockutil --no-restart --add "/System/Applications/Finder.app"
dockutil --no-restart --add "/System/Applications/App Store.app"
dockutil --no-restart --add "/System/Applications/Calendar.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/System/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/Android Studio.app"
dockutil --no-restart --add "/System/Applications/Messages.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/System/Applications/System Preferences.app"
# dockutil --no-restart --add "/Applications/Flipper.app"
# dockutil --no-restart --add "/Applications/Figma.app"
# dockutil --no-restart --add "/Applications/Xcode.app"
