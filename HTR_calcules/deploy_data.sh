#!/bin/env bash
#downlaod the repository and creat the dataset to analys the corpus
git clone https://github.com/FourbeFlo/Lambertus
git clone https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16
git clone https://github.com/FoNDUE-HTR/FONDUE-FR-PRINT-16

#create data set
mkdir data
cd data
mkdir dataLam
mkdir dataFR
mkdir dataLA
cd ..
mv FONDUE-LA-PRINT-16/data/* data/dataLA
mv FONDUE-FR-PRINT-16/data/* data/dataFR
mv Lambertus/data/* data/dataLam
#clean the space
cd ~
rm -rf FONDUE-LA-PRINT-16
rm -rf FONDUE-FR-PRINT-16
rm -rf Lambertus
#prepare the dataset
#dataLA remove the copy and make a new directory poetry
cd ~/data/dataLA || exit
rm -rf Aretius_1-Tim Bucer_Eph_b Cajetan_Rom Daneau_1-Tim Megander_Eph T_M_Daneau_1_Tim_C1 T_M_Daneau_1_Tim_C2 index_Lambert varia
cd ~/data/dataLA 
mkdir poetry
#dataLam move the poetry file into dataLA
cd ~
mv data/dataLam/test/13982576.* data/dataLA/poetry/
mv data/dataLam/test/13982731.* data/dataLA/poetry/
mv data/dataLam/test/2207529.* data/dataLA/poetry/
#dataset ready 
#foctionnel le 18.06.24