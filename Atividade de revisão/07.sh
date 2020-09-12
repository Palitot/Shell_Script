#!/bin/bash

A="$(ls -l $1)"  
B="$(ls -l $2)"  
C="$(ls -l $3)"  

echo -e "Informações de $1:" ${A} >> info.txt  
echo -e"Informações de $2:" ${B} >> info.txt 
echo -e"Informações de $3:" ${C} >> info.txt 