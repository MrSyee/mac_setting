#!/usr/bin/env bash

set -eu

# Homebrew install check
if ! which brew
then
    printf '\n Homebrew not installed in your MacOS! \n'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc
fi

# sudo authority
read -r -s -p "[sudo] sudo password for $(whoami):" pass

# move to Brewfile folder
cd brew

# BrewFile execution command
brew bundle
cd ..

# Set .zshrc
sh zsh_install.sh

# installation complete message
printf '\n installation complete! \n'