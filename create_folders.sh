#!/usr/bin/env bash

# Check if the folder_names.txt file exists
if [ -e "folder_names.txt" ]; then
    # Read each line of the file and create a folder for each name
    while IFS= read -r folder_name; do
        # Check if the folder already exists before creating it
        if [ ! -d "$folder_name" ]; then
            mkdir "$folder_name"
            echo "Created folder: $folder_name"
        else
            echo "Folder already exists: $folder_name"
        fi
    done < "folder_names.txt"
else
    echo "The file folder_names.txt does not exist."
fi
