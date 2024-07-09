### Install MacOS on IMac 5K 2017

1. **Format the Fusion Disk (SSD + HDD)**

   Follow links: [Youtube](https://www.youtube.com/watch?v=kHDiYDO6v2w&ab_channel=N%C4%81gaYanamandala) or [Article](https://www.tech-otaku.com/mac/secure-erasing-mac-fusion-drive/)

2. **Create a USB boot**
   
   - Install [TransMac for Windows](https://www.acutesystems.com/scrtm.htm)
   - Download Sierra 10.12 installation .dmg files [online](https://archive.org/details/macOS-X-images) or you can find at local SAMSUNG SSD 4TB
   - Create the boot USB ([Youtube](https://www.youtube.com/watch?v=TRPF_FZNwko&ab_channel=TechyDruid)). Do not extract the .dmg file

3. **Boot**
   Turn on IMac, hold "option" to boot and install
4. **Update MacOS version to Ventura in Appstore**
5. **Enable zsh**
6. **Add Color Promt**
   ```
   # Color Promt
   autoload -U colors && colors
   PS1="%B%{$fg[green]%}%~ %B%{$reset_color%}%% "
   alias ls='ls -G'
   export CLICOLOR=1 
   export LSCOLORS=GxBxhxDxfxhxhxhxhxGxGx
   ```
8. **Install packages**
   - Update terminal
   - Linear mouse: Scrolling 0.75 - 18. Pointer 1.5 - 0.1
9. **Install [Fira Code](https://github.com/tonsky/FiraCode?tab=readme-ov-file) font**
10. **Install [Miniconda](https://docs.anaconda.com/miniconda/#quick-command-line-install): Download *.pkg* file for MacOS**
11. 
