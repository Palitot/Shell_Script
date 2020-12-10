#!/bin/bash
read -p "Digite o usuário: " User
echo -e "\nBackups que ${User}possui: "
ls ~/backups/$User

read -p "Digite o ip de destino: " ip

read -p "Digite o arquivo que deseja restaurar" arq

read -p "Diretório onde será enviado o arquivo" dir

sudo rsync -aAXv ~/backups/${User}/${arq} ${User}@${ip}:${dir}