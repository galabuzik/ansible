#!/bin/bash

# Remove the CommdandLine Tools installed by Brew, keep line below commented when working with Ansible, 
# it removes CmdTools and yet they're required for Ansible to execute

# sudo rm -rf /Library/Developer/CommandLineTools

# Set the path to your downloaded Xcode .xip file
# Make sure to change the path to the right path of the TC Build Agent
XCODE_XIP_PATH="/Users/TheAdmin/Xcode_15.xip"

# Navigate to the Applications directory
cd /Applications

# Unzip the Xcode .xip file
echo "Unzipping Xcode..."
sudo xip -x $XCODE_XIP_PATH

# Ansible requires setting the Xcode path below inorder to execute xcodebuild commands
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

# Accept the Xcode license
echo "Accepting Xcode license..."
sudo xcodebuild -license accept

# Check the Xcode version to confirm installation
echo "Checking Xcode version..."
xcodebuild -version

#Installing xcode packages
sudo xcodebuild -runFirstLaunch

sudo xcrun simctl runtime add "/Users/TheAdmin/iOS_17_Simulator_Runtime.dmg"
