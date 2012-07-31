#!/bin/bash
# selections from https://github.com/mathiasbynens/dotfiles/blob/master/.osx and elsewhere

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Put the dock on the right
defaults write com.apple.dock orientation -string right

# Pin the dock at the bottom
defaults write com.apple.dock pinning -string end

# Expand the save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Let keys repeat by disabling character variant popup when holding a key
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Require password after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeDebugMenu -bool true

# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# hide some home folders in the GUI
chflags hidden ~/Public ~/bin ~/Movies

# set available line wrap lengths in TextMate
defaults write com.macromates.textmate OakWrapColumns '( 60, 76, 78, 120 )'

for app in Dock Safari iTunes SystemUIServer; do killall $app ; done
