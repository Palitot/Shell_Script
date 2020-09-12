#!/bin/bash
WAY="$(pwd)
DATA="$(date +%y-%m-%d)"
$(mkdir /bin/${DATA}) && echo "Diretório criado com sucesso"
$(cp * /bin/${DATA}) && echo "Arquivos copiados para /bin/${DATA}" 

echo -e "Compactando o diretório /bin/${DATA}"

$(tar -czf DATA.tar.gz /bin/${data})
$(cp /bin/${DATA}/DATA.tar.gz ${WAY})
$(rm -r /bin/${data})
