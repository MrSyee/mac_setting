set -eu

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Remove user name on prompt
echo "\n# DEFAULT_USER" >> $HOME/.zshrc
echo "DEFAULT_USER='$(whoami)'" >> $HOME/.zshrc
# zsh plugin
echo "\n# zsh plugin" >> $HOME/.zshrc
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $HOME/.zshrc
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $HOME/.zshrc
# fzf
echo "\n# fzf" >> $HOME/.zshrc
$(brew --prefix)/opt/fzf/install --all
# pyenv
echo "\n# pyenv" >> $HOME/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.zshrc
echo 'export PATH="$PYENV_ROOT/shims:$PATH"' >> $HOME/.zshrc
echo 'eval "$(pyenv init --path)"' >> $HOME/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> $HOME/.zshrc
# Docker
echo "\n# docker" >> $HOME/.zshrc
echo "etc=/Applications/Docker.app/Contents/Resources/etc" >> $HOME/.zshrc
echo "ln -s $etc/docker.zsh-completion $(brew --prefix)/share/zsh/site-functions/_docker" >> $HOME/.zshrc
echo "ln -s $etc/docker-compose.zsh-completion $(brew --prefix)/share/zsh/site-functions/_docker-compose" >> $HOME/.zshrc

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
