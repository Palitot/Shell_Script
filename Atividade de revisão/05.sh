#!/bin/bash

DATA="$(date +%y-%m-%d)"
$(mkdir /bin/${DATA}) && echo "Diretório criado com sucesso"
$(cp * /bin/${DATA}) && echo "Arquivos copiados para /bin/${DATA}" 