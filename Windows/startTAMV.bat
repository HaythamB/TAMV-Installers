@echo off
call conda activate tamv
call cd TAMV
call python TAMV.py
call conda deactivate
call cd ..