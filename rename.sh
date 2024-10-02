#!/bin/bash

# Get all folders matching the pattern
for folder in [0-9]*; do
  if [[ -d $folder ]]; then
    # Extract the number from the folder name
    number=$(echo "$folder" | grep -o -E '^[0-9]+')
    
    # Pad the number with leading zeros (up to two digits)
    new_number=$(printf "%02d" "$number")
    
    # Construct the new folder name
    new_name="${folder/$number/$new_number}"
    
    # Rename the folder
    mv "$folder" "$new_name"
  fi
done

