macOS dev environment automation
===
> This configuration automates the basic software installation required for your macOS environment.

> You need to do nothing for building up environment. you just wait the message to allow to use this.

### Installation

``` bash
git https://github.com/Onepredict/mac_env.git
```

``` bash
cd mac_env
```

``` bash
./install.sh
```

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
    - jenv
    - mas
    - neofetch
    - neovim
    - nvm
    - putty
    - pyenv
    - pyenv-virtualenv
    - telnet
    - terraform
    - tmux
    - yarn
    - zsh
    - zsh-completions
    - node.js
    - nginx
    - tomcat@8
    - awscli
* cask(WEB)
    - adoptopenjdk/openjdk/adoptopenjdk8
    - iterm2
    - docker
    - mysqlworkbench
    - google-chrome
    - visual-studio-code
    - alfred
    - postman
    - microsoft-office # office 365(word, excel, ppt, outlook, onedrive)
    - microsoft-teams
    - wireshark # network packet capture & analysis application
    - karabiner-elements
    - sublime-text
    - notion
* mas(AppStore)
    - KakaoTalk
    - Hancom Office HWP 2014 VP Viewer
    - MicrosoftRemoteDesktop, id: 1295203466
    - TheUnarchiver
> In the case of mas, there must be a download history at least once

### Reference
1. Homebrew https://brew.sh/index_ko
2. mas https://github.com/mas-cli/mas
3. homebrew-bundle https://github.com/Homebrew/homebrew-bundle