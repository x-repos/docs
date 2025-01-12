# NVIDIA HPC SDK  🚀

## 1. NVIDIA HPC SDK Installation Guide

This guide outlines the steps to install the NVIDIA HPC SDK using the recommended package manager method.

---

### **Step 1: Check CUDA Version**
Before installing the NVIDIA HPC SDK, verify the CUDA version supported by your system.

Run the following command:
```bash
nvidia-smi
```
Output Example:


```
+-----------------------------------------------------------------------------------------+
| NVIDIA-SMI 550.120                Driver Version: 550.120        CUDA Version: 12.4     |
|-----------------------------------------+------------------------+----------------------+
```

### Step 2: Find a Compatible HPC SDK Version
Visit the official NVIDIA HPC SDK releases page to find a version compatible with your CUDA installation: https://developer.nvidia.com/nvidia-hpc-sdk-releases


---

## 2. NVIDIA CUDA COMPILER (NVCC)

| **Tool/Library**    | **Type**         | **Primary Use**                                                                 | **Languages Supported**  | **Platform**                 |
|----------------------|------------------|---------------------------------------------------------------------------------|--------------------------|-----------------------------|
| **`nvcc`**          | Compiler         | NVIDIA CUDA compiler for low-level GPU programming using CUDA.                  | CUDA C/C++               | NVIDIA GPUs                |
| **`nvc`**           | Compiler         | General-purpose C compiler with support for OpenACC, OpenMP, and CUDA.          | C                        | CPUs, NVIDIA GPUs          |
| **`nvc++`**         | Compiler         | General-purpose C++ compiler with OpenACC, OpenMP, and CUDA support.            | C++                      | CPUs, NVIDIA GPUs          |
| **`nvfortran`**     | Compiler         | Fortran compiler for high-performance computing with OpenACC and CUDA support.   | Fortran                  | CPUs, NVIDIA GPUs          |
| **`pgcc`** (legacy) | Compiler         | Legacy PGI C compiler, replaced by `nvc` in the NVIDIA HPC SDK.                  | C                        | CPUs, NVIDIA GPUs          |
| **`pgc++`** (legacy)| Compiler         | Legacy PGI C++ compiler, replaced by `nvc++` in the NVIDIA HPC SDK.              | C++                      | CPUs, NVIDIA GPUs          |
| **`mpicc`**         | Compiler Wrapper | Compiler wrapper for MPI programs (typically for C), part of OpenMPI.            | C                        | Distributed systems        |
| **`mpic++`**        | Compiler Wrapper | Compiler wrapper for MPI programs (typically for C++), part of OpenMPI.          | C++                      | Distributed systems        |
| **OpenACC**         | Programming Model| High-level parallel programming model using directives for GPU and CPU portability.| C, C++, Fortran          | CPUs, NVIDIA GPUs          |
| **OpenMP**          | Programming Model| Directive-based parallel programming for shared memory and GPU offloading.       | C, C++, Fortran          | CPUs, GPUs (multi-vendor)  |
| **CUDA**            | API/Model        | NVIDIA’s parallel programming platform and API for direct GPU programming.       | C, C++                   | NVIDIA GPUs                |
| **OpenMPI**         | Library          | Message Passing Interface (MPI) implementation for distributed computing.        | C, C++, Fortran          | Clusters, distributed HPC  |
| **MPI**             | API/Model        | Standard API for distributed-memory parallelism using message passing.           | C, C++, Fortran          | Distributed systems        |

---