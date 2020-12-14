#!/bin/bash
sudo cp 1.sh /etc/profile.d/random_phrase.sh
echo $(date +%d/%m/%y)
op=$(( ( $RANDOM % 5 ) +1 ))
#Referências aos picks diferenciados de Thiago no P1
case $op in
	1)
		echo "Olá meu consagrado!"
		;;
	2)
		echo "Você perdeu para uma menininha!"
		;;
	3)
		echo "Dia de fazer poppy JG $(date +%d/%m/%y)." 
		;;
	4)
		echo "Você curte linux?"
		;;
	5)
		echo "Vai Tibers!"
		;;
esac