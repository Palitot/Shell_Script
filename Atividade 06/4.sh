#!/bin/bash
cont=0
if [ $# -eq 3 ]; then
	for file in $*;do
		linha=$(cat $file | wc -l)
		if [ $linha -ge 5 ]; then
			cont+=1
			echo $file >> file.txt
		else
			continue
		fi
	done
fi
if [ $cont -ge 2 ]; then
	echo "Os arquivos que passaram do tamanho crítico."
	cat file.txt
else
	echo "Menos de dois arquivos passaram do tamanho crítico."
fi

rm file.txt