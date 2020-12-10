#!/bin/bash
source ex1.sh
cat num.txt | tr  '\n' ' ' >> a.txt
colum=$(awk -F " " '{print NF}' a.txt)
declare -A array
key=0
field=1
for ((i=0; i<$colum;i++)); do
	aux=$(cut -d ' ' -f${field} a.txt) 
	array[$i]=$aux
	key=$(($key+1))
	field=$(($field+1))
done < a.txt
rm a.txt
ma=${array[0]}
me=${array[0]}
for i in ${array[*]}; do
	if [[ $i -lt $me ]]; then
		me=$i
	fi

done
for i in ${array[*]}; do
	if [[ $i -gt $ma ]]; then
		ma=$i
	fi

done

echo "$(maior $me $ma) é o maior"
echo "$(menor $me $ma) é o menor"