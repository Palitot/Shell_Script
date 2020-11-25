#!/bin/bash
awk '{print $1 " " $2}' < rank.txt >> meninos.txt
awk '{print $3 " " $4}' < rank.txt >> meninas.txt