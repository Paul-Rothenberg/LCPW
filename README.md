# Lagranto Container Python Wrapper (LCPW)
Python Wrapper for a Lagranto (Lagrangian Analysis Tool) Container. This repository provides a guide and script to modify the [offical Python Wrapper](https://lagranto.readthedocs.io/en/latest/) for Lagranto, so that it can work with an Apptainer container that supplies Lagranto.
### Note: This project is in an early state. Full functionality might be limited. Only tested for ERA5 Lagranto Container.

# Set up the LCPW
1. Go to a directory where you want to store the source code.
2. Execute LCPW.sh
3. Activate an existing or new conda environment where you want to install the Wrapper.
4. ```pip install -e Lagranto-0.3.1```
5. ```export LagrantoSif="/absolute/path/to/your/lagranto/container/image/lagranto.era5.sif"```
6. For permanent use, add the LagrantoSif environment variable to your ~/.bashrc file.
7. You should now be able to execute your lagranto python scripts as if Lagranto were installed on the system.
