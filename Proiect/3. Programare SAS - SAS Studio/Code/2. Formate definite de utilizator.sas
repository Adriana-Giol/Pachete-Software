/*2. CREAREA SI FOLOSIREA DE FORMATE DEFINITE DE UTILIZATOR*/ 
 
/*Afisarea datelor din fisierul Raiting folosind un format personalizat */  
PROC FORMAT;  
value raiting low-6.5='Scazut'  
                   6.6-8 = 'Mediu'  
                   8.1<-high ="Ridicat";  
RUN;  
TITLE'Clasificarea Raiting-ului';
PROC PRINT data=libpro.raiting label;  
	  label  MedieRaiting="Raiting mediu"  
	  NrVoturi ="NumarVoturi"  
	  BileteVandute ="Numar bilete vandute"  
	  MediePretBilet ="Pret mediu bilet";  
	  format MedieRaiting raiting. MediePretBilet dollar10.2;  
RUN; 
