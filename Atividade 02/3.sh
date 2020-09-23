#!/bin/bash

read -p "Digite um número para saber se é par ou ímpar: " num
resto="$(( ${num} % 2))"
if [ $resto -eq 0 ]
then
    echo "Número ímpar"
else
    echo "Número par"
fi
