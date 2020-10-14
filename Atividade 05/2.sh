#!/bin/bash

for i in $(ls $1)
do
	linha=$(cat ${i} | wc -l)
	echo $linha >> lista.txt 
done
cat lista.txt | sort -n
rm lista.txt