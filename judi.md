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
# Check current python
using Pkg
Pkg.add("PyCall")
using PyCall
PyCall.python
```

```julia
# Update Python and PyCall env vars
ENV["PYTHON"] = "/path/to/your/conda/env/bin/python"
Pkg.build("PyCall")

# Install JUDI
Pkg.add("JUDI")
```
```julia
conda activate devito
conda install jupyter
using Pkg
Pkg.add("IJulia")
```

## PLOTS Jupyter notebook
```julia
using PyPlot
x = rand(10, 10)
imshow(x)
gcf()  #
```
