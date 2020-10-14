#!/bin/bash
for i in $(cat num.txt); do
	soma=$(( ${soma} + ${i} ))

done
echo ${soma}