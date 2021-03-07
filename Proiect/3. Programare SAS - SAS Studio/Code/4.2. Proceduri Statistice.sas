/*4.2 PROCEDURI STATISTICE*/
/*Crearea unei noi tabele SAS – Vanzari*/
libname LIBPRO '/home/u47496690/sasuser.v94/Proiect';
data LIBPRO.Vanzari;
	set libpro.Raiting;
	VanzariTotale=BileteVandute*MediePretBilet;
	ProcentVot=NrVoturi/BileteVandute;
RUN;

/*Aplicarea unui format predefinit*/
PROC FORMAT;  
value raiting low-6.5='Scazut'  
                   6.6-8 = 'Mediu'  
                   8.1<-high ="Ridicat";  
RUN;  
  
PROC PRINT data=libpro.Vanzari label;  
label  MedieRaiting="Raiting mediu"  
	  NrVoturi ="NumarVoturi"  
	  BileteVandute ="Numar bilete vandute"  
	  MediePretBilet ="Pret mediu bilet" 
	  VanzariTotale = "Vanzari Totale"
	  ProcentVot="Procent de vot";
format MedieRaiting raiting. MediePretBilet dollar10.2 ProcentVot percent10.2;  
RUN; 

 /*Aplicarea analizei statistice*/
PROC UNIVARIATE DATA=LIBPRO.Vanzari;
	VAR ProcentVot;
	HISTOGRAM ProcentVot;
	Title"Histograma pentru procentul de vot";
RUN;
