#!/bin/bash

read -p "Digite um valor para A: " a
a="$(( ${a} + 1 ))"

echo "A + 1 = ${a}"