#!/bin/bash

# Get a list of all folders in the current directory
for folder in Week*; do
  if [[ -d $folder ]]; then
    # Extract the number from the folder name
    number=$(echo "$folder" | grep -o -E '[0-9]+')

    # Rename the folder by prepending the number
    mv "$folder" "${number}- $folder"
  fi
done

