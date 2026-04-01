# GlobalProtect

## Direct run
```bash
sudo gpclient --fix-openssl connect globalprotect.mines.edu --default-browser
```
## Longterm Setup
```bash
echo "alias gp='sudo gpclient --fix-openssl connect globalprotect.mines.edu --default-browser &>/tmp/gpclient.log & disown'" >> ~/.bashrc
```
```bash
gp
```
