#!/bin/bash
# This script lists files with specific criteria, sorts them, and renames them in a single pipeline.
gawk -F, 'NR > 1 && $3 == 2 && $NF ~ "S" {print $0}' titanic.csv | 
gawk -F, '{gsub(/female/, "F"); print $0}' |
gawk -F, '{gsub(/male/, "M"); print $0}'|
gawk -F, '$7 > 0 {i += 1} {sum += $7}  END {sum /= i} {print $0} END {print "Average Age: " sum}'
