# CSC 510 – Software Engineering Homework 4

### Group 54: Chirag Rajesh Hegde (chegde), Melika Ahmadi Ranjar (mahmadi), Sravya Yepuri (syepuri) 

![GitHub](https://img.shields.io/badge/Language-Python-blue.svg)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat&logo=linux&logoColor=black) 
![MIT License](https://img.shields.io/badge/License-MIT-red.svg) 
![GitHub repo size](https://img.shields.io/github/repo-size/CSC510-SE-HW/hw4) 
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/CSC510-SE-HW/hw4)](https://github.com/CSC510-SE-HW/hw4/pulls)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/CSC510-SE-HW/hw4) 
[![GitHub contributors](https://img.shields.io/github/contributors/CSC510-SE-HW/hw4)](https://github.com/CSC510-SE-HW/hw4/graphs/contributors)
[![GitHub forks](https://img.shields.io/github/forks/CSC510-SE-HW/hw4)](https://github.com/CSC510-SE-HW/hw4/network/members)
[![Closed issues](https://img.shields.io/github/issues-closed-raw/CSC510-SE-HW/hw4?color=bright-green)](https://github.com/CSC510-SE-HW/hw4/issues?q=is%3Aissue+is%3Aclosed)
[![Open issues](https://img.shields.io/github/issues-raw/CSC510-SE-HW/hw4)](https://github.com/CSC510-SE-HW/hw4/issues?q=is%3Aissue+is%3Aopen)
[![Commit Activity](https://img.shields.io/github/commit-activity/m/CSC510-SE-HW/hw4)](https://github.com/CSC510-SE-HW/hw4/commits)

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

###Task 3: Passenger Filtering, Gender Replacement, and Age Calculation
A script called task3.sh is created that performs the following operations:

1. **Passenger Filtering**: Extracts passengers from the Titanic dataset (titanic.csv) who were in 2nd class and embarked at Southampton.
2. **Gender Label Replacement**: Replaces the "male" and "female" labels with "M" and "F" respectively.
3. **Age Calculation**: Calculates the average age of the filtered passengers.


