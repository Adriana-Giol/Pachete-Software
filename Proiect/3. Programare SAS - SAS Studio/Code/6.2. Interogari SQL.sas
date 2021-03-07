/*6.2.  Interograre SQL*/

/*Interograre SQL care va afisa cheltuielile totale cu salariile si bonusurile pentru fiecare film in parte */
libname LIBPRO '/home/u47496690/sasuser.v94/Proiect';
PROC SQL;
CREATE TABLE  CheltuieliSalarii as
Select distinct f.IdFilm,Film,An,Raiting,
				sum(Salariu)as Salarii_totale,
				sum(Salariu*Raiting/100) as Bonusuri_totale,
				sum(Salariu+Salariu*Raiting/100)as Cheltuieli_totale
From LIBPRO.RandActori as r, LIBPRO.Filme as f
Where r.IdFilm=f.IdFilm
Group by f.IdFilm;
QUIT;
PROC PRINT DATA=CheltuieliSalarii;
RUN;