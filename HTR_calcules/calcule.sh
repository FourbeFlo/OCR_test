#!/bin/bash
# you need a python 3.8
module  load OpenSSL/1.1 GCCcore/10.2.0 Python/3.8.6
# Activate a Python virtual environment from a folder named 'kraken-env' in the user's home directory.
source ~/calcule-env/bin/activate
#downlaod the model
wget https://github.com/Gallicorpora/Segmentation-and-HTR-Models/releases/download/1.0.0/Gallicorpora+_best.mlmodel

python kamiCLI/run.py Gallicorpora+_best.mlmodel -d data