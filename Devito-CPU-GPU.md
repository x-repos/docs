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
