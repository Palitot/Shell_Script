#!/bin/bash
awk -F ' ' '$1 ~ /Nelson/ {sum += $3} END {print "Nelson" " " sum}' downloads.txt
awk '$1 != "Nelson" {print $1 " " $3}' downloads.txt