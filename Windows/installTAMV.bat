@echo off
call mkdir logs
call echo **********************    1. Updating conda..    ***************************************
call conda update --all -y > ./logs/00_conda_update.log
call echo **********************    2. Creating tamv conda environment..    **********************
call conda create -y -n tamv python=3.8.6 > ./logs/01_conda_create.log
call echo **********************    3. Entering tamv conda environment..    **********************
call conda activate tamv
call echo **********************    4. Installing dependencies..    ******************************
call conda install -y pylint tk numpy flake8 matplotlib PyQt curl imutils setuptools opencv=4.2.0 > ./logs/02_conda_deps.log
call echo **********************    5. Clong TAMV repository from GitHub source...    ************
call git clone https://github.com/HaythamB/TAMV.git > ./logs/03_clone.log
call conda deactivate
call echo **********************    TAMV is now installed successfully    ************************
call echo:
call echo:
call echo Please run "startTAMV.bat" to run TAMV!