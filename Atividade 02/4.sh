#!/bin/bash

lista1=$(ls $1) || exit 0
lista2=$(ls $2) || exit 0
lista3=$(ls $3) || exit 0

linha1=$(ls $1 | wc -l) 
linha2=$(ls $2 | wc -l)
linha3=$(ls $3 | wc -l)

echo -e "$(( ${linha1} + ${linha2} + ${linha3} ))"