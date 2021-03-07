/*4. PROCEDURI STATISTICE*/
/*Histograma pentru pretul mediu al biletelor*/
PROC UNIVARIATE DATA=LIBPRO.Raiting;
	VAR MediePretBilet;
	HISTOGRAM MediePretBilet;
	Title "Histograma pentru pretul mediu al biletelor";
RUN;

