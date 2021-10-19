
CREATE VIEW raspodela_v AS
SELECT Skolska_godina.naziv AS 'godina', 
Osoba.prezime + ' ' + Osoba.ime AS 'profesor',
Predmet.naziv AS 'predmet', 
STR(Odeljenje.razred) + '/' + Odeljenje.indeks AS 'odeljenje'
from Raspodela join Skolska_godina on godina_id = Skolska_godina.id
left join Osoba on Raspodela.nastavnik_id = Osoba.id
left join Predmet on Raspodela.predmet_id = Predmet.id
left join Odeljenje on Raspodela.odeljenje_id = Odeljenje.id

select * from raspodela_v