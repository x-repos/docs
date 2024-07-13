This markdown is written for Ambient Noise Tomography (ANT) instruction

#  **Package Installation**

- Downlaod [GIPPtools](https://www.gfz-potsdam.de/en/section/geophysical-imaging/infrastructure/geophysical-instrument-pool-potsdam-gipp/software/gipptools) and copy bin and add to PATH
    ```
    export PATH=~/Programs/gipptools-2024.170/bin:$PATH
    ```
- For MacOS, [JAVA JDK](https://www.oracle.com/java/technologies/downloads/#jdk22-mac) is need to be install to run GIPPtools

# Processing

1. Download IRIS data at: https://ds.iris.edu/ds/nodes/dmc/forms/breqfast-request/ 
1. The station from GFZ should download by fdsnfetch:
https://geofon.gfz-potsdam.de/software/fdsnws_fetch/
(install fdsnfetch by pip)
1. Save in 2 folders:
    - waveforms: BKB.mseed
    - stations: BKB.xml
1. Cut data into one day chunk by using GGIPtools
1. Create 2 (years) * 365 (folders) of juliandays, copy all data of one day for all stations
1. Check all days, if missing data in one day => remove data of that day
1. Check length of continous data, if incremental hours < 20 => remove data of that day
1. Do cross correlation then save to asdf format
1. Do stacking
