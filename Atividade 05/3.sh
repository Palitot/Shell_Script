#!/bin/bash
read -p "Digite dois números: " a b

for i in $(seq $a $b); do
	soma=$(( ${soma} + ${i} ))

done
echo ${soma}