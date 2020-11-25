{
	acc = 0
	for( i=1; i<=NF; i++ )
	{
		if($i ~ /[0-9]+/ ) acc = acc+$i;

	}


	if( acc/3.0 >= 70) aprov++;
	else reprov++;


	if( acc/30.0 >= 0 && acc/30.0 <= 9.9999) zero++;
	else if( acc/30.0 <= 10 && acc/30.0 >= 1.9999) um++;
	else if( acc/30.0 >= 8 && acc/30.0 <= 9.99999) oito++;

	if( acc/30.0 >= 9 && acc/30.0 <= 10) nove++;
}

END{
	print "Aprovados:"aprov" ""Reprovados:"reprov
	print "Entre 0 e 9.9999:"zero
	print "Entre 10 e 1.9999:"um
	print "Entre 8 e 9.99999:"oito
	print "Entre 9 e 10:"nove
}
