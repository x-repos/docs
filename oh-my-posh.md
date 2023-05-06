# **install oh-my-posh**

1. download executed oh-my-posh file to the .bin
```
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O ~/.bin
```
2. change mode... done!
```
chmod +x ~/.bin/oh-my-posh
```
3. install firacode - nerd font
4. download theme
```
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip
```
5. add oh-my-posh and config into .bashrc
```
# Run oh-my-posh & config
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/amro.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/neko.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/rudolfs-light.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/tiwahu.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/tonybaloney.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/tokyonight_storm.omp.json)"
```