#!/bin/bash

read -p "Digite uma sequência de 11 números para formatar o CPF: " cpf

echo $cpf | sed -E 's/([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})/\1.\2.\3-\4/g'