# **install sac**

1. download [sac](https://ds.iris.edu/ds/nodes/dmc/forms/sac-download/16949-6a9-e037aaecf7428e6e199a/) from website
2. untar
```
sudo tar -zxvf sac[NAME].tar.gz -C /usr/local/
```
3. edit .bashrc
```
vi ~/.bashrc
```
4. add PATH
```
export SACHOME=/usr/local/sac
source /usr/local/sac/bin/sacinit.sh
export PATH="/usr/local/sac/bin:$PATH"
```