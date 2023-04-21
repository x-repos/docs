# **install cps**

1. download [cps](https://www.eas.slu.edu/eqc/eqc_cps/getzip.html) from website
2. untar
```
sudo tar -zxvf cps[NAME].tar -C /usr/local/
```
3. edit .bashrc
```
vi ~/.bashrc
```
4. add PATH
```
# add PATH cps - Computer Programs in Seismology
export PATH="usr/local/PROGRAMS.330/bin:$PATH"
```