Update: 01/09/2026

- JAX version: 0.6.0
- Cuda version: 12

1. Create a Compatible Environment
   ```
   conda create -n pljaxcu python=3.11 -y
   conda activate pljaxcu
   ```
2. Install JAX 0.6.0 (Plugin System)
   ```
   pip install jax==0.6.0 jaxlib==0.6.0 jax-cuda12-plugin==0.6.0 jax-cuda12-pjrt==0.6.0
   ```
3. Install Supporting NVIDIA Libraries
   ```
   pip install nvidia-cudnn-cu12 nvidia-cublas-cu12 nvidia-cusolver-cu12 nvidia-cusparse-cu12
   ```
4. Install PennyLane & GPU Backends
   ```
   pip install custatevec_cu12
   pip install pennylane-lightning-gpu
   pip install matplotlib
   ```
