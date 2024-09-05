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

5. download [full bin](https://github.com/x-repos/docs/tree/main/cps-bin) for cps 
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

# **install GMT 5**
1. run the following command
```
sudo apt install subversion ghostscript build-essential cmake libnetcdf-dev libfftw3-dev libpcre3-dev libgdal-dev gdal-bin
```
2. install gmt
```
sudo apt install gmt
```
3. install evince
```
sudo apt install evince
```
4. install xdg-open
```
sudo apt install xdg-utils
```

