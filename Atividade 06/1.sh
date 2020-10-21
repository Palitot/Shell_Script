#!/bin/bash
if [ $# -gt 0 ];then
	for parametro in $@; do
		if [ "$parametro" == "logica" ];then
			echo -e "-gt\n-ge\n-lt\nle\n-eq\n==\n!=\n-z\n-n\n-d\n-e\n-f"
		elif [ "$parametro" == "aritmetica" ];then
			echo "test 15 -gt 10, verifica se um valor é maior que o outro."
			echo "test 15 -ge 15, verifica se um valor é maior ou igual que o outro."
			echo "test 15 -lt 30, verifica se um valor é menor que o outro."
			echo "test 10 -le 10, verifica se um valor é menor ou igual a outro."
			echo "test 15 -eq 15, verifica se um valor é igual a outro."
		elif [ "$parametro" == "string" ];then
			echo "test 'palavra' == 'palavra', verifica se a string é igual a outro."
			echo "test 'palavra' != 'diferente', verifica se a string é diferente que a outra."
			echo "test -z 'palavra', verifica se a string é vazia."
			echo "test -n 'palavra', verifica se a string existe e se não é vazia."
		elif [ "$parametro" == "variaveis" ];then
			echo "test -z $variavel, verifica se a variável é vazia."
			echo "test -n $variavel, verifica se a variável não é vazia."
			echo "test $a -gt $b , verifica se uma variável é maior que a outra."
			echo "test $a -ge $b , verifica se uma variável é maior ou igual que a outra."
			echo "test $a -lt $b , verifica se uma variável é menor que a outra."
			echo "test $a -le $b , verifica se uma variável é menor ou igual que a outra."
			echo "test $a -eq $b , verifica se uma variável (se os dois forem inteiros) é maior que a outra."
			echo "test $a == $b, verifica se as variáveis são iguais (se forem strings)."
			echo "test $a != $b, verifica se as variáveis são diferente."
		elif [ "$parametro" == "arquivos" ];then
			echo "test -d arquivo, verifica se o arquivo existe e é um diretório"
			echo "test -e arquivo, verifica se o arquivo existe"
			echo "test -f arquivo, verifica se o arquivo existe e é um arquivo comum"
			echo "test -x arquivo, verifica se o arquivo existe e é executável"
			echo "test -L arquivo, verifica se o arquivo existe e é um link simbólico"

		fi
	done
fi