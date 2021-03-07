/*5. PROCEDURI PENTRU RAPORTARE*/
/*Raportul statistic cu privire la cheltuielile lunare cu publicitatea si a rezultatelor obtinute*/
libname LIBPRO '/home/u47496690/sasuser.v94/Proiect';
data LIBPRO.CheltuieliPublicitare;
	set LIBPRO.CheltuieliPublicitare;
/*Calcularea mediei cheltuielilor lunare cu publicitatea si a biletelor vandute*/
PROC MEANS DATA=libpro.cheltuielipublicitare;
	BY Luna;
	VAR  Cheltuieli BileteVandute;
	TITLE'Raportul cheltuielilor lunare publicitare si a biletelor vandute';
RUN;


