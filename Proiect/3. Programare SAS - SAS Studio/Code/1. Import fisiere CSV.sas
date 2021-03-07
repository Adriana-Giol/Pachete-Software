/*1. IMPORTUL FISIERELOR CSV*/

/*1. Fisier RAITING*/
/* Pentru fisiere CSV incarcade din Windows */
FILENAME CSV "/home/u47496690/sasuser.v94/Proiect/Raiting.csv" TERMSTR=CRLF;

 /*Import fisier CSV - Raiting */
PROC IMPORT DATAFILE=CSV OUT=LIBPRO.Raiting DBMS=CSV REPLACE;
RUN;

/** Afisare rezultate **/
Title'Tabel RAITING ~ Detaliile filmului "Parasite"';
PROC PRINT DATA=LIBPRO.Raiting;
RUN;

/** Anularea referintei fisierului **/
FILENAME CSV;

/************************************************************************************/

/*2. Fisier FILME*/
/** Pentru fisiere CSV incarcade din Windows **/
FILENAME CSV "/home/u47496690/sasuser.v94/Proiect/Filme.csv" TERMSTR=CRLF;

/** Import fisier CSV - Filme  **/
PROC IMPORT DATAFILE=CSV OUT=LIBPRO.Filme DBMS=CSV REPLACE;
RUN;

/** Afisare rezultate **/
Title'Tabel FILME ~ Filmele produse de ArirangTV';
PROC PRINT DATA=LIBPRO.Filme;
RUN;

/** Anularea referintei fisierului **/
FILENAME CSV;
/************************************************************************************/

/*3. Fisier ACTORI*/
/** Pentru fisiere CSV incarcade din Windows **/
FILENAME CSV "/home/u47496690/sasuser.v94/Proiect/Actori.csv" TERMSTR=CRLF;

/** Import fisier CSV - Actori  **/
PROC IMPORT DATAFILE=CSV OUT=LIBPRO.Actori DBMS=CSV REPLACE;
RUN;

/** Afisare rezultate **/
Title'Tabel ACTORI ~ Actorii principali din productiile ArirangTV';
PROC PRINT DATA=LIBPRO.Actori;
RUN;

/** Anularea referintei fisierului **/
FILENAME CSV;
/************************************************************************************/

/*4. Fisier RAND ACTORI*/
/** Pentru fisiere CSV incarcade din Windows **/
FILENAME CSV "/home/u47496690/sasuser.v94/Proiect/RandActori.csv" TERMSTR=CRLF;

/** Import fisier CSV - RandActori **/
PROC IMPORT DATAFILE=CSV OUT=LIBPRO.RandActori DBMS=CSV REPLACE;
RUN;

/** Afisare rezultate **/
Title'Tabel RAND ACTORI ~ Corespondenta dintre actori si filmele in care au jucat';
PROC PRINT DATA=LIBPRO.RandActori;
RUN;

/** Anularea referintei fisierului **/
FILENAME CSV;
/************************************************************************************/

/*5. Fisier CHELTUIELI PUBLICITARE*/
/** Pentru fisiere CSV incarcade din Windows **/
FILENAME CSV "/home/u47496690/sasuser.v94/Proiect/CheltuieliPublicitare.csv" TERMSTR=CRLF;

/** Import fisier CSV - Cheltuieli Publicitare  **/
PROC IMPORT DATAFILE=CSV OUT=LIBPRO.CheltuieliPublicitare DBMS=CSV REPLACE;
RUN;

/** Afisare rezultate **/
Title'Tabel CHELTUIELI PUBLICITARE ~ Cheltuielile publicitare pentru filmele ArirangTV';
PROC PRINT DATA=LIBPRO.CheltuieliPublicitare;
RUN;

/** Anularea referintei fisierului **/
FILENAME CSV;