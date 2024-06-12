#!/bin/env bash
# Keep only the XML files by deleting JPG, JPEG, and PNG files in directories named 'data'
for dir in data/; do
    rm -f "$dir"/*.jpg "$dir"/*.jpeg "$dir"/*.png
done