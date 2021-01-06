#!/usr/bin/env bash

# Homebrew install check
if ! which brew
then
    printf '\n Homebrew not installed in your MacOS! \n'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# sudo authority
read -r -s -p "[sudo] sudo password for $(whoami):" pass

# move to Brewfile folder
cd brew

# BrewFile execution command
brew bundle

# When downloading with cask, it is the same as the one downloaded from the web.
# so when executed, it is not executed because of a security problem.
# A command to remove the quarantine property for the downloaded file to immediately run the application installed with cask
sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
sudo xattr -dr com.apple.quarantine /Applications/Docker.app
sudo xattr -dr com.apple.quarantine /Applications/MySQLWorkbench.app
sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
sudo xattr -dr com.apple.quarantine /Applications/Postman.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Word.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Excel.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ PowerPoint.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Outlook.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ OneNote.app
sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Teams.app
sudo xattr -dr com.apple.quarantine /Applications/Wireshark.app
sudo xattr -dr com.apple.quarantine /Applications/Karabiner-elements.app
sudo xattr -dr com.apple.quarantine /Applications/Sublime\ Text.app
sudo xattr -dr com.apple.quarantine /Applications/Notion.app

# installation complete message
printf '\n installation complete! \n'