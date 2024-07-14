This markdown is written for Ambient Noise Tomography (ANT) instruction

#  **Package Installation**

- Install mpi4py on MacOS and add to .zshrc:
    ```
    brew install mpi4py
    pip install --upgrade pip setuptools
    pip install mpi4py
    export TMPDIR=/tmp
    mkdir -p ~/.openmpi
    echo "btl = ^vader" > ~/.openmpi/mca-params.conf
    ```

# Download data

1. The [map](https://ds.iris.edu/gmap/#network=*&maxlat=-35.8617&maxlon=-70.3422&minlat=-36.2&minlon=-70.6966&datacenter=IRISDMC&drawingmode=box&planet=earth) of stations
1. Download data from IRIS by [ROVER](https://earthscope.github.io/rover/)

1. Save in 2 folders:
    - ```1-waveforms-raw```: BKB.mseed
    - ```1-stations```: BKB.xml

# Processing



1. Run ```1-pre-mpi.py``` to preprocess daily data
    ```
    mpiexec -n 4 python 2\1-pre-mpi.py
    ```
    - ```1-waveforms-raw``` => ```2-waveforms-clean```
    - 4 in the number of CPUs
    - Demean
    - Detrend
    - Resample
    - Add 0 value for missing data with incremental hour being more than 20
    - Remove data with incremental hour (inc_hours) being less than 20

1. Run 




# Optional
- Downlaod [GIPPtools](https://www.gfz-potsdam.de/en/section/geophysical-imaging/infrastructure/geophysical-instrument-pool-potsdam-gipp/software/gipptools) and copy bin and add to PATH
    ```
    export PATH=~/Programs/gipptools-2024.170/bin:$PATH
    ```
- For MacOS, [JAVA JDK](https://www.oracle.com/java/technologies/downloads/#jdk22-mac) is need to be install to run GIPPtools
- The station from GFZ should be downloaded by [fdsnfetch](https://geofon.gfz-potsdam.de/software/fdsnws_fetch/) - install fdsnfetch by pip
- Cut data into one day chunk by using GGIPtools - if the the data cannot download by ROVER.
- Run ```1-mseedcut.py``` to cut and sort the data
    ```
    python 1-mseedcut.py
    ```
    - ```1-waveforms``` → ```1-waveforms-raw```
    - Run ```1-mseedcut.py```
    - The data from ```1-waveforms``` folder after runing ```1-mseedcut.py``` will be cut and sorted into ```1-waveform-raw``` folder.
