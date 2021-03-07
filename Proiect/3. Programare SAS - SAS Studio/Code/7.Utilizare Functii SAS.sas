/*7. UTILIZARE FUNCTII SAS*/

/*Afisarea varstei tuturor actorilor precum si anotimpul in care s-au nascut*/
libname LIBPRO '/home/u47496690/sasuser.v94/Proiect';
DATA LIBPRO.Varste;
SET LIBPRO.Actori;
Varsta=YRDIF(DataNasterii,TODAY(),'Actual');
Luna=MONTH(DataNasterii);
Anotimp='Iarna';
if Luna ge 3 and Luna lt 6 then Anotimp='Primavara';
else if Luna ge 6 and Luna lt 9 then Anotimp='Vara';
else if Luna ge 9 and Luna lt 12 then Anotimp='Toamna';
RUN;
Title "Varstele actorilor";
PROC PRINT DATA=LIBPRO.Varste noobs;
var IdActor Nume Gen Nationalitate Varsta Anotimp;
RUN;
