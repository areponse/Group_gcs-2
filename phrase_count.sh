#!/bin/bash

# Prompt the user for input
read -p "Please type a phrase: " input_phrase

# Count the number of words (whitespace-separated) and white spaces
word_count=$(echo "$input_phrase" | wc -w)
space_count=$(echo "$input_phrase" | tr -cd ' ' | wc -c)

# Display the results
echo "The number of words is $word_count"
echo "The number of white spaces is $space_count"
