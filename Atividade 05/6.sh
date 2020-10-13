#!/bin/bash

for alpha in {A..Z}; do
	$(mkdir $alpha) && $(touch ./$alpha/$alpha)

done