#!/bin/bash

# Define the directory to be processed
directory="data_Daneau"

# Define the output file
output_file="file_paths.txt"

# Create or empty the output file
> "$output_file"

# Find all files in the directory and its subdirectories, then sort them alphabetically
find "$directory" -type f | sort > "$output_file"

echo "File paths have been written to $output_file"
#script works 28.06.24