#!/bin/bash
workdir=”/tmp/workdir”
mkdir $workdir 2> /dev/null
cd $workdir
ls $1 2> /dev/null && echo “Por favor crie o arquivo ${workdir}/${1}”
ls $1 2> /dev/null && exit 1
ls $2 2> /dev/null && echo “Por favor crie o arquivo ${workdir}/${2}”
ls $2 2> /dev/null && exit 1
ls $3 2> /dev/null && echo “Por favor crie o arquivo ${workdir}/${3}”
ls $3 2> /dev/null && exit 1
cat $1 $2 $3 | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario”
