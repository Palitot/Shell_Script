#!/bin/bash
#PRIMEIRO NOME
nome1=$(awk 'NR==1' nomes.txt)
echo ${nome1:0:4}${nome1:4:1}. ${nome1:12:7}
#SEGUNDO NOME
nome2=$(awk 'NR==2' nomes.txt)
echo ${nome2:0:7}${nome2:7:1}. ${nome2:14:7}
#TERCEIRO NOME
nome3=$(awk 'NR==3' nomes.txt)
echo ${nome3:0:8}${nome3:8:1}. ${nome3:17:1}.  ${nome3:26:1}. ${nome3:28:6}
#QUARTO NOME
nome4=$(awk 'NR==4' nomes.txt)
echo ${nome4:0:7} ${nome4:8:1}. ${nome4:15:1}. ${nome4:22:8}
#QUINTO NOME
nome5=$(awk 'NR==5' nomes.txt)
echo ${nome5:0:8} ${nome5:9:1}. ${nome5:16:1}. ${nome5:22:1}. ${nome5:29:1}. ${nome5:32:9}
#SEXTO NOME
nome6=$(awk 'NR==6' nomes.txt)
echo ${nome6:0:7} ${nome6:8:1}. ${nome6:18:8}