#!/bin/bash
arquivo1=$(cat $1 | wc -l)
arquivo2=$(cat $2 | wc -l)
arquivo3=$(cat $3 | wc -l)

(( "${arquivo1}" > "${arquivo2}" )) && (( "${arquivo1}" > "${arquivo3}" )) && echo" ${1}"
(( "${arquivo2}" > "${arquivo1}" )) && (( "${arquivo2}" > "${arquivo3}" )) && echo "${2}"
(( "${arquivo3}" > "${arquivo1}" )) && (( "${arquivo3}" > "${arquivo1}" )) && echo "${3}"
exit 0