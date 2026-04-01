# GlobalProtect

## Direct run
```bash
sudo gpclient --fix-openssl connect globalprotect.mines.edu --default-browser
```
## Longterm Setup
```bash
alias gp='sudo gpclient --fix-openssl connect globalprotect.mines.edu --default-browser &>/tmp/gpclient.log & disown'
```
```bash
gp
```
