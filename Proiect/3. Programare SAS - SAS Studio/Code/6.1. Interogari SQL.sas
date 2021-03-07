/*6.1. Interograre SQL*/

/*Interograre SQL care va afisa salariul si bonusul total primit de fiecare actor pentru filmele jucate, 
   precum si castigurile obtinute */
libname LIBPRO '/home/u47496690/sasuser.v94/Proiect';
PROC SQL;
Create table SalariiActori as
Select distinct a.IdActor,Nume,Gen,Nationalitate,
				sum(Salariu)as Salariu_total,
				sum(Salariu*Raiting/100) as Bonus_total,
				sum(Salariu+Salariu*Raiting/100)as Venituri_totale
From LIBPRO.Actori as a, LIBPRO.RandActori as r, LIBPRO.Filme as f
Where a.IdActor=r.IdActor and r.IdFilm=f.IdFilm
Group by a.IdActor;
QUIT;
PROC PRINT DATA=SalariiActori;
RUN;