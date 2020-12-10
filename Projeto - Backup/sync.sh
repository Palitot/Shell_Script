#!/bin/bash
DATE=$(date '+%d-%m-%Y-%H-%M-%S')

read -p "Digite o nome do usuário da máquina que vai ser backupeada: " USR

read -p "Caminho absoluto do diretório que vai ser compactado: " DIR

read -p "Digite o IP da máquina de destino: " IP

mkdir ~/backups/$USR 2> /dev/null

rsync -avz ${USR}@${IP}:${DIR} /tmp/auxiliar

cd /tmp/auxiliar
tar -czf $DATE.tar.gz /tmp/auxiliar && mv /tmp/auxiliar/$DATE.tar.gz ~/backups/$USR
cd ~/projeto