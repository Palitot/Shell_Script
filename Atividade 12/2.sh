#!/bin/bash

declare -A array
while read line; do
	letr=$(echo $line | awk '{print $1}')
	num=$(echo $line | awk '{print $2}')
	((array[$letr]+=$num))
done < arq.txt

for key in ${!array[@]}; do
	printf '%s%s\n' "$key - ${array[$key]}" 
done | sort 