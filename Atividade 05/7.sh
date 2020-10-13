#!/bin/bash

for file0 in *; do
	hash0=$(cat $file0 | md5sum)
	for file1 in *; do
		hash1=$(cat $file1 | md5sum)
		if [ "$hash0" == "$hash1" -a "$file0" != "$file1" ]; then
			echo "Arquivos ${file0} e ${file1} têm conteúdo igual"
		fi
	done
done



