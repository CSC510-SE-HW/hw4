# CSC 510 – Software Engineering Homework 4

### Group 54: Chirag Rajesh Hegde (chegde), Melika Ahmadi Ranjar (mahmadi), Sravya Yepuri (syepuri) 

## Introduction
This homework involves three tasks focusing on utilizing bash scripting for file manipulation and dataset analysis. Scripts that use common Unix commands have been created to filter, process, and manipulate data. 

## Tasks

### Task 1: Killing an Infinite Script
Our script named `task1.sh` identifies the process ID (PID) of the running `infinite.sh`, and terminates the process using its PID.

### Task 2: File Filtering, Sorting, and Renaming
A script called `task2.sh` is created that performs the following operations:
1. **File Listing**: Find all files in `dataset1/` containing the word "sample" and at least 3 occurrences of the word "CSC510".   
2. **Sorting**: Sort the list of filtered files in descending order based on the occurrences of "CSC510", and break ties by sorting the files based on their size.
3. **Renaming**: Replace `file_` with `filtered_` in each file name and display the updated names.

