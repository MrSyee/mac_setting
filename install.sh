#!/usr/bin/env bash

# Homebrew install check
if ! which brew
then
    printf '\n Homebrew not installed in your MacOS! \n'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# sudo authority
read -r -s -p "[sudo] sudo password for $(whoami):" pass

# move to Brewfile folder
cd brew

# BrewFile execution command
brew bundle

# Additional command
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Remove user name on prompt
echo "\n# DEFAULT_USER" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "DEFAULT_USER='$(whoami)'" >> ${ZDOTDIR:-$HOME}/.zshrc
# zsh plugin
echo "\n# zsh plugin" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
# fzf
echo "\n# fzf" >> ${ZDOTDIR:-$HOME}/.zshrc
$(brew --prefix)/opt/fzf/install --all
# pyenv
echo "\n# pyenv" >> ${ZDOTDIR:-$HOME}/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ${ZDOTDIR:-$HOME}/.zshrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> ${ZDOTDIR:-$HOME}/.zshrc
echo 'eval "$(pyenv init --path)"' >> ${ZDOTDIR:-$HOME}/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ${ZDOTDIR:-$HOME}/.zshrc
# Docker
echo "\n# docker" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "etc=/Applications/Docker.app/Contents/Resources/etc" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "ln -s $etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "ln -s $etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose" >> ${ZDOTDIR:-$HOME}/.zshrc

# # When downloading with cask, it is the same as the one downloaded from the web.
# # so when executed, it is not executed because of a security problem.
# # A command to remove the quarantine property for the downloaded file to immediately run the application installed with cask
# sudo xattr -dr com.apple.quarantine /Applications/iTerm.app
# sudo xattr -dr com.apple.quarantine /Applications/Docker.app
# sudo xattr -dr com.apple.quarantine /Applications/Google\ Chrome.app
# sudo xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
# sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Word.app
# sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Excel.app
# sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ PowerPoint.app
# sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Outlook.app
# sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ OneNote.app
# sudo xattr -dr com.apple.quarantine /Applications/Microsoft\ Teams.app
# sudo xattr -dr com.apple.quarantine /Applications/Karabiner-elements.app
# sudo xattr -dr com.apple.quarantine /Applications/Notion.app

# installation complete message
printf '\n installation complete! \n'