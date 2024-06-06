#!/bin/env bash
# mv all file in a master directory named "data"
find data_1 -type f -exec mv {} data/ \;
