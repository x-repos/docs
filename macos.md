### Install MacOS on IMac 5K 2017

1. **Format the Fusion Disk (SSD + HDD)**

   Follow links: [Youtube](https://www.youtube.com/watch?v=kHDiYDO6v2w&ab_channel=N%C4%81gaYanamandala) or [Article](https://www.tech-otaku.com/mac/secure-erasing-mac-fusion-drive/)

2. **USB boot**
   
   - Install [TransMac for Windows](https://www.acutesystems.com/scrtm.htm)
   - Download Sierra 10.12 installation .dmg files [online](https://archive.org/details/macOS-X-images) or you can find at local SAMSUNG SSD 4TB
   - Create the boot USB ([Youtube](https://www.youtube.com/watch?v=TRPF_FZNwko&ab_channel=TechyDruid)).
     -- For Sierra, do not extract the .dmg file
     -- For High Sierra, find the InstallESD.dmg in SharedSupport folder (recommended)

3. **Boot**
   Turn on IMac, hold "option" to boot and install
4. **Update MacOS version to Ventura in Appstore**
5. **Enable zsh**
6. **Add Color [Promt](https://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text)**
   ```
   # Color Promt
   autoload -U colors && colors
   PS1="%B%{$fg[green]%}%~ %B%{$reset_color%}%% "
   alias ls='ls -G'
   export CLICOLOR=1 
   export LSCOLORS=GxBxhxDxfxhxhxhxhxGxGx
   ```
7. **Packages**
   - Update terminal
   - Linear mouse: Scrolling 0.75 - 18. Pointer 1.5 - 0.1
8. **Install [Fira Code](https://github.com/tonsky/FiraCode?tab=readme-ov-file) font**
9. **Install [Miniconda](https://docs.anaconda.com/miniconda/#quick-command-line-install): Download *.pkg* file for MacOS**
10. [SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and [Adding key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to GIT
11. **GIT command**
    - Create the gcm file
    ```
    mkdir ~/.bin
    chmod 777 ~/.bin/gcm
    ```
    - Add lines to gcm
    ```
    git add .
    git commit -m "Auto Commit"
    git push
    ```
    - Add PATH
    ```
    # add PATH git
    export PATH=~/.bin:$PATH
    ```
12. **Dwave**
    - [Dwave Token](https://cloud.dwavesys.com/leap/)
    - [Dwave Ocean Installation](https://docs.ocean.dwavesys.com/en/stable/overview/install.html)
    - Add PATH
    ```
    # Dwave Token
    export DWAVE_API_TOKEN="DEV-108cfb55739c25318a509bd4cbfbb5519903da9e"
    ```
    - Login from local computer
    ```
    dwave auth login
    ---
    Authorization completed successfully. You can now use "dwave auth get" to fetch your token.
    ```

