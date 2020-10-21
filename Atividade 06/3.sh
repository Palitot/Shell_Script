#!/bin/bash

for file in $*; do
	if [ -x "$file" ]; then
		echo $file
	else
		continue
	fi
done