#!/bin/bash

# Check if a directory name was provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a directory name"
    exit 1
fi

# Check if the directory exists
if [ ! -d "$1" ]; then
    echo "Directory not found: $1"
    exit 1
fi

# Compress the files in the directory using tar
tar -czf "${1}.tar.gz" "$1"

# Output the name of the compressed archive
echo "Compressed archive created: ${1}.tar.gz"

