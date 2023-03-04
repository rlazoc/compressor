#!/bin/bash

# Provide a directory name as an argument
result=$(./bin/compressor testdir)
if [[ $result == *"Compressed archive created"* ]]; then
  echo "Test case 1 passed"
else
  echo "Test case 1 failed"
fi

# Provide no arguments
result=$(./bin/compressor)
if [[ $result == *"Please provide a directory name"* ]]; then
  echo "Test case 2 passed"
else
  echo "Test case 2 failed"
fi

# Provide a non-existent directory name
result=$(./bin/compressor nonexist)
if [[ $result == *"Directory not found"* ]]; then
  echo "Test case 3 passed"
else
  echo "Test case 3 failed"
fi

