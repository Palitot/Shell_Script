#!/bin/bash

thiago='professor'
echo'SUBSTITUIÇÃO DE VARIÁVEL ${}'
echo -e "É o nome do recurso da linguagem shell que permite fazer a substituição do do nome da variável pelo seu valor"
echo "EXEMPLO:"
echo -e "Após criar a variável thiago, quando utilizamos" '${thiago}'" há a substituição do termo thiago pelo valor atribuído: '${thiago}"
echo 'SUBSTITUIÇÃO DE SHELL ${}'
echo -e "É o nome do recurso da linguagem Shell que permite executar um comando e a sua saída substituir o comando inserido"
echo "EXEMPLO:"
echo -e 'Para executar o comando ls usamos $(ls)'"e com isso, a saída desse comando substituirá o texto do comando: $(ls)"
