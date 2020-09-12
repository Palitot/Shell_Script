#!/bin/bash

echo "Digite 3 diretórios para listar seu conteúdo"

read -p "Digite o caminho de 3 diretórios:" x y z

echo -e "Arquivos do diretório 1:" $(ls $x)
echo -e "Arquivos do diretório 2:" $(ls $y)
echo -e "Arquivos do diretório 3:" $(ls $z)