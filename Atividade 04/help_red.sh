echo "'>' Redireciona a saída padrão do comando para um arquivo. '>' sobrescreve o arquivo em questão."
echo "Exemplo: ls /root > root.txt"

echo "'>>' Redireciona a saída padrão do comando para um arquivo. '>>' adiciona a saída do comando ao final do arquivo, sem apagá-lo."
echo "Exemplo: ls /root >> root.txt"

echo "'2>' Redireciona a saída padrão de erros do comando para um arquivo. '2>' sobrescreve o arquivo em questão."
echo "Exemplo: ls /Diretorio_Inexistente 2> lista.txt"

echo "'2>>' Redireciona a saída padrão de erros do comando para um arquivo. '2>>' adiciona a saída do comando ao final do arquivo, sem apagá-lo."
echo "Exemplo: ls /Diretorio_Inexistente 2>> lista.txt"

echo "'&>' Redireciona todas as saídas do comando para um arquivo. '&>' sobrescreve o arquivo em questão."
echo "Exemplo: ls suspeito.txt &> /dev/null"

echo "'&>>' Redireciona todas as saídas do comando para um arquivo. '&>>' adiciona a saída do comando ao final do arquivo, sem apagá-lo."
echo "Exemplo: ls suspeito.txt &> /dev/null"

echo "'<' Redireciona o conteúdo de um arquivo para a entrada de um comando.. "
echo "Exemplo: cat < /etc/passwd"

echo "Serve para indicar ao shell que um comando inicia na linha seguinte e termina quando encontrar uma linha que tenha <<."
echo "Exemplo: mail thiago@mengao.com.br << fim"


echo "'<<<' Segue uma string. Permite redirionar a entrada padrão do comando para a string escrita no bash"
echo "Exemplo: read primeiro segundo <<< "Olá Mundo" && echo $primeiro $segundo"

echo "| (pipe) - Direciona a saída de um comando para a entrada de outro."
echo "Exemplo: ls /root/ | wc -l"