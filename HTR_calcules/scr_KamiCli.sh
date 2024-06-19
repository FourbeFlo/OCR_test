# !bin/bash
# script for creat csv file to calculate wer, wacc etc see : https://github.com/FoNDUE-HTR/kamiCLI

# load the module
module load OpenSSL/1.1 GCCcore/10.2.0 Python/3.8.6
# open python env
source ~/calculescpu-env/bin/activate
#test2
module load OpenSSL/1.1 GCCcore/10.2.0 Python/3.8.6

# if it doesn't work add the following packages in this version : 
#pip install protobuf==3.20.0
#pip install coremltools==6.3.0

#run the programm
python kamiCLI/run.py OCR_test/HTR_calcules/model/Gallicorpora+_best.mlmodel -d data_daneau
# it's work the 8.06.24!
# retester puis recréer l'env-virtuel
# pour l'instant ça marche mais il faudrait tester en batch mais pas le temps reprendre 