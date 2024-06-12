#downlaod the repository
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
#dataLA
cd ~/data/dataLA || exit
rm -rf Aretius_1-Tim Bucer_Eph_b Cajetan_Rom Daneau_1-Tim Megander_Eph T_M_Daneau_1_Tim_C1 T_M_Daneau_1_Tim_C2 index_Lambert varia
