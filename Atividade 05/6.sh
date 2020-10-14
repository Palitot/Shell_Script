#!/bin/bash

for alpha in {A..Z}; do
	$(mkdir $alpha) && $(touch ./$alpha/$alpha.py; cp content.txt ./$alpha/$alpha.py; chmod +x ./$alpha/$alpha.py)

done

