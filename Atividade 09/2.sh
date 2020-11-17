  
#!/bin/bash
read -p "Digite o nome do arquivo: " arq

read -p "Digite 1 para remover a linhas em branco ou 2 para ver a quantidade:" option

case $option in
	1)
		grep -v -E '^$' $arq > tmp && mv tmp $arq
		;;
	2)
		grep -E '^$' $arq | wc -l
		;;
	*)
		echo "Desculpe, opção inválida!"
		;;
esac
