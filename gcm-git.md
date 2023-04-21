# **gcm short command**
1. create the **gcm bash** file at ~/.bin
```
mkdir ~/.bin
vi ~/.bin/gcm
```
2. add git command
```
#!/usr/bin/bash
git add .
git commit -m "Auto Commit"
git push
```
3. add PATH in ~/.bashrc
```
# add PATH git
export PATH="/home/ben/.bin:$PATH"
```