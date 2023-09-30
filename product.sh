#!/usr/bin/env bash

# Ask a user for the first number
read -p "Enter the first number: " num1

# Ask a user for the second number
read -p "Enter the second number: " num2

# Calculate the product using * arthemetic operator
product=$((num1 * num2))

# Print the result
echo "The product of $num1 and $num2 is $product"
