#!/bin/bash
# This script lists files with specific criteria, sorts them, and renames them in a single pipeline.
gawk -F, 'NR > 1 && $3 == 2 && $NF ~ "S" {print $0}' titanic.csv > filtered.csv && mv filtered.csv titanic.csv| 
gawk -F, '{gsub(/female/, "F"); print $0}' |
gawk -F, '{gsub(/male/, "M"); print $0}'|
gawk -F, '{sum += $7} END {sum /= (NR - 1)} END {print sum}' 