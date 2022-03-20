DATA TESTE;
	
	/*TODAY - Data atual*/
	
	Data_Atual = today();
	
	/*DATETIME - Data e Hora*/
	
	DataHora_Atual = datetime();
	
	/*Time - Hora Atual*/
	
	Hora_Atual = time();
	
	format Data_Atual date9.
		   DataHora_Atual datetime21.
		   Hora_Atual  time9.
	;
RUN;