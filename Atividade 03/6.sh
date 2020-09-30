#!/bin/bash

read -p "Texto proibido " proibido
arq1=$(cat $1 | grep ${proibido})
arq2=$(cat $2 | grep ${proibido})
arq3=$(cat $3 | grep ${proibido})

test "${arq1}" == "${proibido}" && echo "$1" && mv $1 /tmp || echo "Arquivo 1 tá limpo"
test "${arq2}" == "${proibido}" && echo "$2" && mv $2 /tmp || echo "Arquivo 2 tá limpo"
test "${arq3}" == "${proibido}" && echo "$3" && mv $3 /tmp || echo "Arquivo 3 tá limpo"