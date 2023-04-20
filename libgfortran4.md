# **libgfotran.so.4**

to install **libgfortran.so.4**, you must install **gfortran7**

1. add apt repository manually
```
cd /etc/apt/sources.list.d/
sudo vi ubuntu-toolchain-r-ubuntu-test-jammy.list
```
2. add following line to  **ubuntu-toolchain-r-ubuntu-test-jammy.list**
```
deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe
```
3. update apt
```
sudo apt update
```
4. install **gcc/g++ 7** and **gfortran 7**
```
sudo apt-get install gcc-7 g++-7
sudo apt-get install gfortran-7
```
5. check the **libgfortran.so.4** in **/lib/x86-64-linux-gnu**
```
cd /lib/x86_64-linux-gnu/
```