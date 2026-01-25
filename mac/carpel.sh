#!/usr/bin/env zsh

# carpel.sh - In which we symlink some of the hidden System Utilities on macOS directly to Applications

ln -s /System/Library/CoreServices/Applications '/Applications/CoreServices'

# now we purposely kill the Finder application in case the icon in the Applications folder itself is broken
killall Finder
