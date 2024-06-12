#!/bin/bash
#first clone the kamicli repository : https://github.com/FoNDUE-HTR/kamiCLI
# you need a python 3.8
module  load OpenSSL/1.1 GCCcore/10.2.0 Python/3.8.6
# creat the env
python -m venv  calcule-env
source ~/calcule-env/bin/activate
# chose the parameters
pip install --upgrade pip
pip install -r kamiCLI/requirements.txt
