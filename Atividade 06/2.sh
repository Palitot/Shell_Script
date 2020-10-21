#!/bin/bash
if [ -n "$a" -a "$a" != "" ]; then
	echo "Tudo certo com A"
elif [ -z "$a" ]; then
	read -p "Variável A vazia, digite um valor para A: " a
fi

if [ -n "${b}" -a "${b}" != "" ]; then
	echo "Tudo certo com B"

elif [ -z "$b" ]; then
        read -p "Variável B vazia, digite um valor para B: " b
fi

if [ -n "$c" -a "$c" != "" ]; then
	echo "Tudo certo com C"

elif [ -z "$c" ]; then
	read -p "Variável C vazia, digite um valor para C: " c
fi

echo -e "Os valores das variáveis a b c são $a, $b e $c"