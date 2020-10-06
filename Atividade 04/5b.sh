#!/bin/bash
while true; do
	a=$(( ${RANDOM} % 10 ))
	touch ${a} 2>> 2.log && echo “$(date +%H:%M) ${a}: criado!” >> 1.log
	sleep 1
b=$(( ${RANDOM} % 10 ))
	rm ${b} 2>> 2.log && echo “$(date +%H:%M) ${b}: removido!” >> 1.log
	cat 1.log >> 3.log | cat 2.log >> 3.log
done
