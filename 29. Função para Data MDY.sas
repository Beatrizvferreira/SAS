DATA TESTE;
	
	DT_STRING = "05/15/2022";
	
	
	DT = MDY(05,15,2021);
	DT2=366; /*Data negativa, ele entende como antecedente ao marco inicial*/
	FORMAT DT ddmmyy10.;
	FORMAT DT2 date9.;
	
	DT_NUMERO = MDY(INPUT(SCAN(DT_STRING,1,"/"),2.),
					INPUT(SCAN(DT_STRING,2,"/"),2.),
					INPUT(SCAN(DT_STRING,3,"/"),4.));
					
	FORMAT DT_NUMERO DDMMYY10.;
RUN;


/*
 Para o SAS ele entende 1960 como a data zero.
 
 1960    1961     1962
   0	  366	   731
 
*/