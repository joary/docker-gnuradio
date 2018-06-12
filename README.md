# docker-gnuradio
A basic gnuradio installation with docker based on Arch Linux

# Scripts:
1. Make an `config` file and change it according to your personal needs. An example is in `config_example`

**Attention**: You need to run the following scripts in the same directory of the config file, else you need to correct the paths to the config file!

2. To build the image locally use `build.sh`, you can also download the image with `docker pull joarypl/docker-gnuradio`

3. To run the image use `run.sh`, when the container start execute inside the container the `gnuradio-companion` command to start gnuradio GUI.

