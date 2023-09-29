#!/bin/bash

# Check if recipients.txt and template.txt exist
if [ ! -f members.txt ] || [ ! -f template.txt ]; then
    echo "Please ensure members.txt and template.txt exist."
    exit 1
fi

# Initialize a variable to store the list of names
names=""

# Create a directory to store the personalized messages
mkdir -p messages


# Process each group member's name
while read -r member_name; do
    # Replace the placeholder with the group member's name and save to a file
    sed "s/Recipeint_Name/$member_name/g" template.txt > "messages/${member_name}.txt"
    names+=" $member_name"
done < members.txt

echo "Personalized messages created for:$names"
