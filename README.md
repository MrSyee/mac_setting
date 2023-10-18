macOS dev environment automation
===
> This configuration automates the basic software installation required for your macOS environment.

> You need to do nothing for building up environment. you just wait the message to allow to use this.

### Installation

``` bash
git clone https://github.com/Onepredict/mac_setting.git
```

``` bash
cd mac_setting
```

``` bash
sh ./install.sh
```

### Details
1. Install brew
2. Install packages using brew
3. Install oh-my-zsh
4. Modify .zshrc
5. Change theme of zsh to "powerlevel10k" (Using iterm2)
6. Change iterms2 setting
    - Change color: Snazzy + Blue=3a87ad
    - Change key: Profiles -> Keys -> Key Mappings -> Presets -> Natural Text Editing

### Installing items
* brew
    - readline
    - cask
    - curl
    - fzf
    - git
    - git-lfs
    - xz
    - htop
    - mas
    - neofetch
    - neovim
    - nvm
    - putty
    - pyenv
    - pyenv-virtualenv
    - tmux
    - spectacle
    - qview
    - zsh-autosuggestions
    - zsh-syntax-highlighting
* cask(WEB)
    - iterm2
    - docker
    - google-chrome
    - visual-studio-code
    - alfred
    - microsoft-office # office 365(word, excel, ppt, outlook, onedrive)
    - microsoft-teams
    - karabiner-elements
    - notion
* mas(AppStore)
    - KakaoTalk
    - Hancom Office HWP 2014 VP Viewer
> In the case of mas, there must be a download history at least once

### Reference
1. Homebrew https://brew.sh/index_ko
2. mas https://github.com/mas-cli/mas
3. homebrew-bundle https://github.com/Homebrew/homebrew-bundle
4. zsh theme powerlevel10k: https://github.com/romkatv/powerlevel10k#fonts