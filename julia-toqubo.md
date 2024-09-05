### ToQUBO Installation Guide

1. **Get API Token from D-Wave**: Obtain your API token from D-Wave by visiting [D-Wave Leap](https://cloud.dwavesys.com/leap/). Sign in or create an account if you haven't already.

    [Get API Token](https://cloud.dwavesys.com/leap/)

2. **Install dwave-ocean-sdk**: Use pip to install the D-Wave Ocean Software Development Kit (SDK).

    ```sh
    pip install dwave-ocean-sdk
    ```

3. **Set up API Token**: Add your API token to your shell environment. Edit your `.zshrc` or `.bashrc` file and add the following line, replacing `"your_api_token"` with your actual API token:

    ```sh
    export DWAVE_API_TOKEN="your_api_token"
    ```

4. **Install Julia**: Install Julia programming language. You can use curl to download and execute the installation script.

    ```sh
    curl -fsSL https://install.julialang.org | sh
    ```

    If you encounter any issues during the installation process, delete the folders `.julia` and `.juliaup`, and remove the Julia initialization from `.zshrc` and `.bash_profile`.

5. **Install JuMP, ToQUBO, and DWave in Julia**: Open Julia REPL and install the required packages.

    ```julia
    using Pkg
    Pkg.add("JuMP")
    Pkg.add("ToQUBO")
    Pkg.add("DWave")
    ```

6. **Install CondaPkg**: This package enables the usage of Conda within Julia.

    ```julia
    using Pkg
    Pkg.add("CondaPkg")
    using CondaPkg
    ] conda add your_package
    ] conda pip_add your_package
    ```
7. **Navigate to Your Directory in Julia**: To work with local packages in Julia, navigate to your desired directory by executing the following command in Julia REPL, replacing `"path/to/your/directory"` with the path to your directory containing the package. Ensure that the parent folder includes the `your_package.jl` folder.

    ```julia
    push!(LOAD_PATH, "/full/path/to/your_package.jl")
    using your_package
    ```

Follow these steps to successfully install ToQUBO and its dependencies.
