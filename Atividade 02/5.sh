#!/bin/bash

check1=$(ls $1) || exit 0
check2=$(ls $2) || exit 0
check3=$(ls $3) || exit 0

conteudo1=$(ls $1 | wc -l) 
conteudo2=$(ls $2 | wc -l)
conteudo3=$(ls $3 | wc -l)

echo -e "$(( ${conteudo1} + ${conteudo2} + ${conteudo3} ))"