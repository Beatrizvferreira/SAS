DATA FUNCAO_INTNX;
 	SET SASHELP.SHOES;
 	IF REGION = "Africa" THEN DT_INI = MDY(01,01,2021);
	IF REGION = "Asia" THEN DT_INI = MDY(02,01,2021);
	IF REGION = "Canada" THEN DT_INI = MDY(03,01,2021);
	IF REGION = "Central America/Caribbean" THEN DT_INI = MDY(04,01,2021);
	IF REGION = "Eastern Europe" THEN DT_INI = MDY(05,01,2021);
	IF REGION = "Middle East" THEN DT_INI = MDY(06,01,2021);
	IF REGION = "Pacific" THEN DT_INI = MDY(07,01,2021);
	IF REGION = "South America" THEN DT_INI = MDY(08,01,2021);
	IF REGION = "United States" THEN DT_INI = MDY(09,01,2021);
	IF REGION = "Western Europe" THEN DT_INI = MDY(10,01,2021);
	
	dt_final = intnx("month",DT_INI,2,"end");  /*Avança ou Retrocede datas*/
/* 	dt_final = intnx(parâmetro da avanço - dia/mês/ano/trimestre,
					 variável que deseja alterar,	
					 parâmetro que indica se irá avançar ou retrocer 2/-2/1/-1,	
					 parâmetro para definir se quer começo/metade/final (beg/mid/end) ) */
					
	format dt_ini dt_final date9.;

RUN;



PROC SQL;
	SELECT DISTINCT REGION FROM SASHELP.SHOES;

QUIT;