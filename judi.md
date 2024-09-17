## Devito
```
conda create -n devito
conda activate devito
conda install python
pip install devito #try
pip install pyrevolve
which python
```
## Julia
```
sudo apt update
sudo apt install curl
cd ~/Download
curl -fsSL https://install.julialang.org | sh
```
## JUDI
```
ENV["PYTHON"] = "/path/to/your/conda/env/bin/python"
using Pkg
Pkg.add("PyCall")
Pkg.add("JUDI")
```
```
conda activate devito
conda install jupyter
using Pkg
Pkg.add("IJulia")
```

## PLOTS Jupyter notebook
```
using Pkg
# Pkg.add("PlotlyJS") # For interactive backend
# using Plots
# plotlyjs()  # Set the backend to PlotlyJS

using Plots
gr() # For non interactive backend

f(x) = exp(-x^2/2)

# Create and display the plot
plot(f, -3, 3, title="Gaussian Function", xlabel="x", ylabel="f(x)")
```
