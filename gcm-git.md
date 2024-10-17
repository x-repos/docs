# **gcm short command**
1. create the **gcm bash** file at ~/.bin
```
mkdir ~/.bin
vi ~/.bin/gcm
chmod 777 ~/.bin/gcm
```
2. add git command
```
#!/usr/bin/zsh
git add .
git commit -m "Auto Commit"
git push
```
3. add PATH in ~/.zsh
```
vi ~/.zsh

# add PATH git
export PATH="~/.bin:$PATH"
```
