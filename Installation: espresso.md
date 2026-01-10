Update: 01/09/2026

Download quantum espresso: https://www.quantum-espresso.org/quantum-espresso-v7-4-1-available-on-the-download-page/

- QE version: 7.4.1
- Cuda version: 13

1. EXPORT ENV
```
export FC=nvfortran
export F90=nvfortran
export CC=nvc
export CXX=nvc++
```
2. CONFIGURE:
```
./configure \
FC=nvfortran \
CC=nvc \
--with-cuda=yes \
--with-cuda-cc=120 \
--with-cuda-runtime=13.0 \
--enable-openmp \
--disable-parallel \
--prefix=/home/x/Programs/espresso_gpu
```
3. INSTALL:
```
make -j$(nproc) pw ph && make install
```
4. TO RUN
```
mpirun -np 1 ~/Programs/espresso_gpu/bin/ph.x -in ./mgh2_ph.in > ./mgh2_ph.out
```
