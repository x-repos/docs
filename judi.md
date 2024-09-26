# Installation
## Devito
```shell
conda create -n devito
conda activate devito
conda install python
pip install devito #try
pip install pyrevolve
which python
```
## Julia
```shell
sudo apt update
sudo apt install curl
cd ~/Download
curl -fsSL https://install.julialang.org | sh
```
## JUDI
```julia
# Update python inside julia
ENV["PYTHON"] = "/path/to/your/conda/env/bin/python"
# Install JUDI and dependencies
Pkg.add("JUDI PyPlot DataFrames")
```

## PyPlot
```julia
using PyPlot
x = rand(10, 10)
imshow(x)
gcf()  # for vscode plots
show() # for calling julia.py from terminal
# use nothing for terminal REPL
```

## ENV Activation (Optional)
```shell
julia --project=@.
```
---
# Julia Environment and Package Management with Pkg

Julia has a built-in package manager called **Pkg** that manages environments, packages, dependencies, and versions, similar to Conda for Python.

## Key Features of Pkg

- **Environments**: Create isolated environments for different projects. Each environment is defined by two files:
  - **`Project.toml`**: Lists the direct dependencies required by your project.
  - **`Manifest.toml`**: Provides an exact snapshot of all packages (including dependencies) and their versions for reproducibility.
- **Package Management**: Install, update, and remove packages from the Julia package registry.
  - **Registry Lookup (`General.toml`)**: `~/.julia/registries/General.toml` contains metadata for all available packages in the default General Registry. Julia checks this file to quickly locate package information and dependencies when installing or updating packages.
  - **Package Caching**: Julia caches installed packages in `~/.julia/packages` after the first installation. This speeds up subsequent installations in different environments by reusing the cached versions instead of downloading them again.
  - **Version Independence**: Different environments can use different versions of the same package. The `Project.toml` and `Manifest.toml` files ensure each environment manages its own package versions, while all versions are stored in the shared cache.

- **Dependency Resolution**: Automatically resolves dependencies and ensures compatibility.
- **Version Control**: Tracks package versions using `Project.toml` and `Manifest.toml` to enable reproducible environments.

## Basic Pkg Commands

- `activate` – Create or switch to a specific environment.
- `add` – Install a package in the current environment.
- `rm` – Remove a package from the environment.
- `update` – Update all packages to their latest compatible versions.
- `status` – List all packages and versions in the environment.
- `instantiate` – Recreate an environment with the exact versions specified in `Project.toml` and `Manifest.toml`.

## Example: Using Pkg to Manage Environments

1. **Create a Project Directory and Start Julia:**
    ```bash
    mkdir MyJuliaProject
    cd MyJuliaProject
    julia
    ```

2. **Activate a New Environment:**
    - Activate in the current directory:
      ```julia
      (@v1.9) pkg> activate .
      ```
    - Or activate in a specific path:
      ```julia
      (@v1.9) pkg> activate ~/Desktop/Workspace/julia-envs/first-env/
      ```

3. **Add Packages:**
    ```julia
    (MyJuliaProject) pkg> add DataFrames Plots
    ```

4. **Check the Environment Status:**
    ```julia
    (MyJuliaProject) pkg> status
    (MyJuliaProject) pkg> st
    ```

5. **Use Packages in Your Script:**
    ```julia
    using DataFrames
    using Plots
    ```

6. **Recreate the Environment:**
    Share `Project.toml` and `Manifest.toml` files. To recreate:
    ```julia
    julia
    (@v1.9) pkg> activate .
    (@v1.9) pkg> instantiate
    ```

## Differences Between Pkg and Conda

- **Julia-Specific**: Pkg is tailored for Julia, while Conda supports multiple languages.
- **Integrated**: Pkg is built into Julia; no external tools are needed.
- **Handles Only Julia Packages**: Conda manages both Python packages and other dependencies.

## Alternative: Using Conda with Julia

Use Conda to manage environments if combining both Python and Julia packages. For purely Julia-based projects, Pkg is the preferred option.

