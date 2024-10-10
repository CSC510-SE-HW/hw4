#!/bin/bash
# This script lists files with specific criteria, sorts them, and renames them in a single pipeline.

echo -e "\nStarting the script...\n"

echo "Finding files that contain 'sample' and at least 3 occurrences of 'CSC510'..."
echo -e "Filename\tCount\tSize"

# Find all files in the dataset1 directory that contain the word "sample"
grep -rl "sample" dataset1/* | 

# For each file found, count the number of times "CSC510" occurs in it
xargs grep -c "CSC510" | 

# Filter the output to include only files where "CSC510" occurs 3 or more times
grep -E ':(3|[4-9]|[1-9][0-9]+)$' | 

# Extract only the filenames from the previous output (ignoring the count part)
cut -d':' -f1 | 

# For each of the filtered filenames, output:
# 1. The filename
# 2. The count of "CSC510" in the file (using grep -c again)
# 3. The size of the file (using stat -c %s)
xargs -I {} bash -c 'echo "{} $(grep -c "CSC510" {}) $(stat -c %s "{}")"' | 

# Sort the output:
# 1. First by the number of "CSC510" occurrences (second column, in descending order)
# 2. Then by file size (third column, in descending order)
sort -k2,2nr -k3,3nr | 

# Use gawk to replace "file_" with "filtered_" in the filenames and format the output:
gawk '{ sub(/file_/, "filtered_"); printf "%s\t\t%s\t\t%s\n", $1, $2, $3 }'

echo -e "\nScript execution complete.\n"

