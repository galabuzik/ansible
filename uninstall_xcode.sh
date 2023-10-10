#!/bin/bash

# Remove Xcode Application
sudo rm -rf /Applications/Xcode-beta.app

# Remove any associated data
# rm -rf ~/Library/Developer/Xcode
# rm -rf ~/Library/Developer/CoreSimulator

# Remove the Command Line Tools
# sudo rm -rf /Library/Developer/CommandLineTools

# Clear out user data related to Xcode
# rm -rf ~/Library/caches/com.apple.dt.Xcode
# rm -rf ~/Library/Preferences/com.apple.dt.Xcode.plist

# Reset associated user defaults
# defaults delete com.apple.dt.Xcode
