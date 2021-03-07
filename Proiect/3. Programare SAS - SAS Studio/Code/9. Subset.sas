/*9. Crearea de subseturi*/
/*Am creat un subset de date care afiseaza actorii coreeni nascuti vara*/
libname LIBPRO '/home/u47496690/sasuser.v94/Proiect';
data LIBPRO.ActoriVaratici;
set LIBPRO.Varste;
if Nationalitate eq 'coreeana' and Anotimp eq 'Vara';
title "Actorii coreeni nascuti vara care colaboreaza cu ArirangTV";
proc print data=LIBPRO.ActoriVaratici;
run;
