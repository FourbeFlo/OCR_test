#!/bin/env bash
"""this script rename your data with the name of their parent's folder"""

mkdir data_1
# Move specified directories to data_1
mv data/dataLA/* data/dataLam/* data/dataFR/* data_1/

# Find and move all files from data_1 subdirectories, renaming to use parent folder names
find data_1 -type f | while read -r file; do
  parent_dir=$(basename "$(dirname "$file")")  # Get the name of the parent directory
  basename=$(basename "$file")
  extension="${basename##*.}"
  filename="${basename%.*}"
  newname="${parent_dir}_${filename}.${extension}"  # New filename format: parentDir_originalFilename.extension
  mv "$file" "data/$newname"
done

# Clean up
rm -rf data/dataLA data/dataLam data/dataFR data_1
# If you have an error, use "dos2unix" to clean the script
