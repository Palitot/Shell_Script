#!/bin/bash

read -p "Qual diretorio irá ser verificado? " dir

echo "Arquivos executáveis: "
ls -F ${dir} | grep "*" || echo -e "Não encontrado\n"

echo "Arquivos não executáveis: "
ls -F ${dir} | grep -v "*" || echo -e "Não encontrado\n"

echo  "Verificando diretórios"
ls -F ${dir} | grep "/" || echo -e "Não encontrado\n"