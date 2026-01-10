Update: 09/01/2026

NOTE: The process are supported by Google Genimi

1. EXPORT:
```export CUDA_LIB=/opt/nvidia/hpc_sdk/Linux_x86_64/24.5/cuda/12.4/targets/x86_64-linux/lib64        
export CUDA_ARCH=75
```
2. CONFIGURE:
```
./configure \
  FC=/usr/bin/gfortran CC=/usr/bin/gcc CXX=/usr/bin/g++ \
  MPIFC=/usr/bin/mpif90 MPICC=/usr/bin/mpicc MPICXX=/usr/bin/mpicxx \
  --with-cuda=cuda10
make -j"$(nproc)"
```
3. Find missing lib
```
find / -name "libcudart.so.12" 2>/dev/null
```

4. After Installation: Need to
```
export LD_LIBRARY_PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/24.5/cuda/12.4/targets/x86_64-linux/lib64:$LD_LIBRARY_PATH
```
