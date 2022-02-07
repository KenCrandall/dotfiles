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

#
# Make Preview show PDFs in Single Page mode by default
#
defaults write com.apple.Preview kPVPDFDefaultPageViewModeOption 1

#
# Remove "Other Users" from login prompt
#
sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWOTHERUSERS_MANAGED -bool FALSE

