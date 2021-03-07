/*8. LUCRUL CU MASIVE -ARRAY*/

libname LIBPRO '/home/u47496690/sasuser.v94/Proiect';
proc print data=libpro.actori;
run;
Data LIBPRO.MajusculeActori (drop= i);
SET LIBPRO.Actori;
Array MajusculeActori{2}Gen Nationalitate;
do i=1 to 2;
/*do over MajusculeActori;*/
MajusculeActori{i}=Upcase(MajusculeActori{i});
end;
run;
proc print data=libpro.majusculeactori;
run;