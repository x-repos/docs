# **install cps**

```/usr/local/``` is the path for all users

1. download [cps](https://www.eas.slu.edu/eqc/eqc_cps/getzip.html)
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

5. download [full bin](https://github.com/x-repos/cps/tree/main/cps-bin) for cps 
6. Move all files from dowloaded cps-bin folder to /usr/local/PROGRAMS.330/bin
```
cd ~download/cps-bin
sudo mv * /usr/local/PROGRAMS.330/bin
```
7. add PATH to .bashrc
```
vi ~/.bashrc

# add PATH cps - Computer Programs in Seismology
export PATH="usr/local/PROGRAMS.330/bin:$PATH"
```