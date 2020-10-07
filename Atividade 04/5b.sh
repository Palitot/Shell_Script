#!/bin/bash
while true; do
	a=$(( ${RANDOM} % 10 ))
	touch ${a} 2>> 3.log && echo “$(date +%H:%M) ${a}: criado!” >> 3.log
	sleep 1
b=$(( ${RANDOM} % 10 ))
	rm ${b} 2>> 3.log && echo “$(date +%H:%M) ${b}: removido!” >> 3.log
done
