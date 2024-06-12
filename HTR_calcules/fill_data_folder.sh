#!/bin/env bash
# mv all file in a master directory named "data"
mkdir data_1

# Move specified directories to data_1
mv data/dataLAM/* data/dataLam/* data/datFR/* data_1/

# Move all files from data_1 back to data, appending a timestamp to avoid conflicts
for file in data_1/*; do
  basename=$(basename "$file")
  timestamp=$(date +%s%N)
  mv "$file" "data/${basename}_$timestamp"
done

#rmdir data_1