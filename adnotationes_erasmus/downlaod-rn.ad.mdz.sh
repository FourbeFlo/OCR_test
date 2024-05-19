#!/bin/bash

# for the mdz database :
# Define the base URL and range of URLs
base_url="https://api.digitale-sammlungen.de/iiif/image/v2/bsb11203410_"
start_index=293
end_index=358

# Loop through the range of URLs and download each file
for ((i=start_index; i<=end_index; i++)); do
    index=$(printf "%05d" $i)  # Pad the index with leading zeros
    url="${base_url}${index}/full/full/0/default.jpg"
    echo "Downloading: $url"

    # Use wget to download the file
    wget "$url" -O "bsb11203410_${index}.jpg"
done

echo "Download and renaming complete!"

#use the script

#on mdz the number after the zeros is the unique identifier of the file 
#use these numbers as start_index and end_index 

#more information on the generale Guideline "comming soon"

