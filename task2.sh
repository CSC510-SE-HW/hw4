#!/bin/bash
# This script lists files with specific criteria, sorts them, and renames them in a single pipeline.

echo -e "\nStarting the script...\n"

echo "Finding files that contain 'sample' and at least 3 occurrences of 'CSC510'..."
echo -e "Filename\tCount\tSize"

# Search for files containing the word "sample" and ensure the file list is unique using 'uniq'
grep -rl "sample" dataset1/* | uniq | \
while read file; do 
    # Count the occurrences of the word "CSC510" in each file using 'grep -o' and 'wc -l'
    count=$(grep -o "CSC510" "$file" | wc -l);     
    # Check if the count of "CSC510" is 3 or more
    if [ $count -ge 3 ]; then 
        # Output the file name, count of "CSC510", and the file size
        echo -e "$file\t$count\t$(stat -c %s "$file")"; 
    fi 
done | \

# Sort the files by the count of "CSC510" (2nd column) and file size (3rd column) in descending order
sort -k2,2nr -k3,3nr | \

# Use 'gawk' to replace 'file_' with 'filtered_' in the file names and print the result
gawk -F'\t' '{sub(/file_/, "filtered_", $1); print $1 "\t" $2 "\t" $3}' 

echo -e "\nScript execution complete.\n"

