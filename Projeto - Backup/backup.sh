#!/bin/bash
clear
mkdir /tmp/auxiliar
while true; do #INÍCIO DO LAÇO DO MENU
	echo "Para backup uma vez por hora, digite 1"
	echo "========================================"
	echo "Para backup uma vez por dia, digite 24"
	echo "========================================"
	echo "Para backup uma vez por semana, digite 7"
	echo "========================================"
	echo "Para listar os backups feitos, digite L "
	echo "========================================"
	echo "Para consultar o espaço usado, digite D"
	echo "========================================"
	echo "Para restaurar um dos backups, digite R"
	echo "========================================"
	echo "Para limpar o conteudo da tela, digite C"
	echo "========================================"
	echo -e "Para finalizar o script, digite 0\n"
	read -p "Digite a opção de backup que deseja: " option
	case $option in
	1) #UMA VEZ POR HORA
		#o $1 é o arquivo de configuração
		clear
		source sync.sh
		echo "${USR} ${DIR} ${IP} 1" >> $1
		(crontab -l && echo "@hourly ~/projeto/sync.sh") | crontab -
		echo " "
		sleep 3
		;;
	24) #UMA VEZ POR DIA
		clear
		source sync.sh
		echo "${USR} ${DIR} ${IP} 24" >> $1
		(crontab -l && echo "@daily ~/projeto/sync.sh") | crontab -
		echo " "
		sleep 3
		;;
	7) #UMA VEZ POR SEMANA
		clear
		source sync.sh
		echo "${USR} ${DIR} ${IP} 7" >> $1
		(crontab -l && echo "@weekly ~/projeto/sync.sh") | crontab -
		echo " "
		sleep 3
	    	;;
	L) #LISTAR BACKUPS
		read -p "Digite o nome do usuário para listar seus backups: " USRB
		echo  $(ls ~/backups/${USRB})
		sleep 5; clear
		;;
	D) #VERIFICAR ESPAÇO UTILIZADO
		read -p "Digite o nome do usuário para saber quanto espaço do disco ele consumiu: " USR
		du -sch ~/backups/${USR}
		sleep 3; clear
		;;
	R) #RESTAURAR BACKUP
		source restore.sh
		echo "Restaurando..."
		sleep 3; clear
		;;
	C) #LIMPAR A TELA
		clear
		;;
	0) #SAIR
		echo -e "FINALIZANDO O SCRIPT...\n"
		rm -r /tmp/auxiliar
		echo -e "Script finalizado às $(date '+%H:%M:%S')\n"
		sleep 3; clear
		exit 0
		;;
	*) #NENHUMA DAS ANTERIORES
		echo -e "\nSELECIONE UMA OPÇÃO VÁLIDA\n"
		sleep 3; clear
		;;
	esac
done