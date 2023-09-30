#!/usr/bin/env bash

# Generate two random numbers
first_random=$((1 + RANDOM % 30000))
second_random=$((1 + RANDOM % 10000))

# Calculate square roots
sqrt_first_random=$(echo "sqrt($first_random)" | bc)
sqrt_second_random=$(echo "sqrt($second_random)" | bc)

# Calculate the sum of square roots
sum_of_square_roots=$(echo "$sqrt_first_random + $sqrt_second_random" | bc)

# Print the results
echo "The first random number generated is $first_random"
echo "The square root is $sqrt_first_random"
echo "The second random number generated is $second_random"
echo "The square root is $sqrt_second_random"
echo "The sum of their square roots is $sum_of_square_roots"
