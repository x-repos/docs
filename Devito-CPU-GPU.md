# Configuring Devito for CPU and NVIDIA GPU

This guide demonstrates how to configure Devito to use both the CPU and NVIDIA GPU for computations. The configurations set up the platform, compiler, and parallel language for each backend.

## Code Example

```python
from devito import configuration
import os

# Set the number of threads for CPU execution
os.environ["OMP_NUM_THREADS"] = "1"  # Replace '1' with your desired number of cores

# CPU Configuration
configuration['platform'] = 'cpu64'
configuration['compiler'] = 'gcc'
configuration['language'] = 'openmp'  # Enable OpenMP parallelization
os.environ["DEVITO_LOGGING"] = "DEBUG"

# NVIDIA GPU Configuration
configuration['platform'] = 'nvidiaX'
configuration['compiler'] = 'nvc'  # NVIDIA compiler for GPU
configuration['language'] = 'openacc'  # Enable OpenACC for parallelization on GPU
os.environ["DEVITO_LOGGING"] = "DEBUG"
```

## Example
```bash
python3 examples/seismic/acoustic/acoustic_example.py -d 256 256 256 --tn 2000
```
See GPU card performance:
```bash
watch -n 2 nvidia-smi
```
For more information, visit: https://github.com/devitocodes/devito/wiki/%5BManual%5D-Devito-on-Isambard-%5BCPU-GPU-ARM%5D.

```bash
ValueError: Illegal configuration parameter (platform, nvidia). Accepted: ['cpu64', 'cpu64-dummy', 'intel64', 'snb', 'ivb', 'hsw', 'bdw', 'knl', 'knl7210', 'skx', 'klx', 'clx', 'clk', 'spr', 'arm', 'graviton2', 'graviton3', 'graviton4', 'm1', 'm2', 'm3', 'amd', 'power8', 'power9', 'gpu', 'nvidiaX', 'amdgpuX', 'intelgpuX', 'pvc', 'intelgpuMAX', 'max1100', 'max1550']

ValueError: Illegal configuration parameter (language, cc75). Accepted: [0, 1, 'C', 'openmp', 'openacc', 'cuda', 'hip', 'sycl']
```
