#!/bin/bash

dir1=$1
dir2=$2
dir3=$3
echo 'Lista de arquivos dos diretórios ${dir1}, ${dir2} e ${dir3}'

echo -e "Arquivos do diretório 1:" $(ls $dir1)
echo -e "Arquivos do diretório 2:" $(ls $dir2)
echo -e "Arquivos do diretório 3:" $(ls $dir3)