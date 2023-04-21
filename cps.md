# **install cps**

1. download [cps](https://www.eas.slu.edu/eqc/eqc_cps/getzip.html) from website
2. untar
```
sudo tar -zxvf cps[NAME].tar -C /usr/local/
```
3. make sure you have gfortran and gcc
4. setup
```
sudo ./Setup LINUX6440
sudo ./C
```
5. edit .bashrc
```
vi ~/.bashrc
```
6. add PATH
```
# add PATH cps - Computer Programs in Seismology
export PATH="usr/local/PROGRAMS.330/bin:$PATH"
```