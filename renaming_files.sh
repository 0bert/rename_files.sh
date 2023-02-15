#!/bin/bash

#Author : O.S
#Date   : Feb 15 2023
#Des    : Renaming files with date and time


# Get current date and time
  DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Loop through each argument and rename the file
  for file in "$@"
  do
  # Check if the file exists
  if [ -f "$file" ]
  then
    # Rename the file with the current date and time
    mv "$file" "${file}_${DATE}"
    else
    echo "File $file does not exist."
  fi
done
