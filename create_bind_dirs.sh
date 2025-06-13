#!/bin/bash

# Define base directories
BASE_DIRS=("root" "imr" "pri" "sec")
SUB_DIRS=("etc/bind" "var/cache/bind" "var/lib/bind" "var/log")

# Loop through and create the directories
for base in "${BASE_DIRS[@]}"; do
    for sub in "${SUB_DIRS[@]}"; do
        path="${PWD}/${base}/${sub}"
        mkdir -p "$path"
    done
done

echo "Directories created successfully."
