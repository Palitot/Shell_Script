#!/bin/bash

cp index2.html index.html

arq=$1

cat index.html | sed -E "s/titulo/$(head -n 1 $arq)/g" > tmp
mv tmp index.html


for line in $(sed '1d' < $arq); do
	cat index.html | sed "/<\/ul>/i <li>$line</li>" > tmp
    	mv tmp index.html
done