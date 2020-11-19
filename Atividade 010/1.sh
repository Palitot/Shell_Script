
#!/bin/bash

read -p "Digite a para remover todas as letras, b para remover todos os digitos ou digite c para remover todos os caracteres especiais: " rem
read -p "Informe o arquivo desejado: " arq

case $rem in
	a)
		cat $arq | sed -E 's/[a-zA-Z]//g'
		;;
	b)
		sed -E 's/[0-9]//g' < $arq
		;;
	c)
		cat $arq | sed -E 's/[^0-9A-Za-z]//g'
		;;
	*)
		echo "Opção inválida"
		./1.sh		
		;;

esac