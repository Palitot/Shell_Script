#!/bin/bash

read -p "Digite o nome do arquivo com os números: " arq

cat $arq |sed -E 's/[0-9]{5}-[0-9]{4}/"*CENSURADO*"/g'