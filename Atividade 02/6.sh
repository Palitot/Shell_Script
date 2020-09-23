#!/bin/bash

usuarios=$(cat /etc/passwd | wc -l)
bash=$(grep /bin/bash /etc/passwd | wc -l)
outros=$(( $usuarios - $bash ))

echo "O total de usuários no sistema: ${usuarios}."
echo "O total de usuários no sistema que utilizam o bash: ${bash}."
echo "O total de usuários no sistema que não usam o bash: ${outros}."
