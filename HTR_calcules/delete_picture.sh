#!/bin/env bash
# keep only the xml file by suppressing jpg jpeg and png
for dir in */; do rm "$dir"/*.jpg "$dir"/*.jpeg "$dir"/*.png; done

