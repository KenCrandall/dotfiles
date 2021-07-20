#!/bin/bash

#
# Shorten document proxy icon animation for Finder
#
defaults write -g NSToolbarTitleViewRolloverDelay -float 0
killall Finder

#
# Make hidden apps translucent in Dock
#
defaults write com.apple.Dock showhidden -bool YES
killall Dock
