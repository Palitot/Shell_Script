#!/bin/bash
arq=$1

verif=$(cat $arq |wc -l)
parte=$(($verif/10))

count1=$(($parte+1))
count2=0


while [ $count2 -lt $count1 ]; do
	count2=$(( $count2 + 1 ))
	aux1=$(($count2*10))
	echo " $(cat $arq | head -$aux1 | tail -10)"
	read -p "Press ENTER to continue " ent

done