@echo off
call echo **********************    1. deactivating tamv environment    **************************
call conda deactivate
call echo **********************    2. deleting conda tamv environment    ************************
call conda env remove -n tamv
call echo **********************    3. deleting TAMV folder    ***********************************
call rd /s /q tamv
call echo **********************    4. deleting LOGS folder    ***********************************
call rd /s /q logs
call echo:
call echo:
call echo TAMV has been removed from your system