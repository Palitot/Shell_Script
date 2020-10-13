#!/bin/bash

for i in $(seq 21); do
	((${i} % 2 == 0)) && echo $1

done