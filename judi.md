# Devito
```
conda create -n devito
conda activate devito
conda install python
pip install devito #try
pip install pyrevolve
which python
```
# JUDI
```
ENV["PYTHON"] = "/path/to/your/conda/env/bin/python"
using Pkg
Pkg.build("PyCall")

] add JUDI
using JUDI
```

# PLOTS
```
using Plots
plotlyjs()  # Set the backend to PlotlyJS

f(x) = exp(-x^2/2)

# Create and display the plot
plot(f, -3, 3, title="Gaussian Function", xlabel="x", ylabel="f(x)")
```
