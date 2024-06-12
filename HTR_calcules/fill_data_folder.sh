#!/bin/env bash

mkdir data_1
# Move specified directories to data_1
mv data/dataLA/* data/dataLam/* data/dataFR/* data_1/

# Find and move all files from data_1 subdirectories, renaming to avoid conflicts
find data_1 -type f | while read -r file; do
  basename=$(basename "$file")
  extension="${basename##*.}"
  filename="${basename%.*}"
  timestamp=$(date +%s%N)
  newname="${filename}_${timestamp}.${extension}"
  mv "$file" "data/$newname"
done

#clean
rm -rf data/dataLA data/dataLam data/dataFR data_1
# if you have an error use "dos2unix" to clean the script