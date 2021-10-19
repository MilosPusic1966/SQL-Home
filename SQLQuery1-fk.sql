create database proba_fk
use proba_fk

drop table odeljenje 
drop table ucenik

create table odeljenje ( 
id int CONSTRAINT Prim PRIMARY KEY,
oznaka varchar(20)
)
create table ucenik
( id int,
ime varchar(20),
prezime varchar (20),
odeljenje INT
constraint  Prim_kljuc PRIMARY KEY (id),
CONSTRAINT FK_ODELJ FOREIGN KEY (odeljenje) REFERENCES odeljenje(id) 
ON DELETE SET NULL
ON UPDATE CASCADE
)
-- ON DELETE UPDATE NO ACTION
-- ON DELETE UPDATE CASCADE
-- ON DELETE UPDATE SET NULL 
-- ON DELETE UPDATE SET DEFAULT

INSERT INTO odeljenje (id, oznaka) VALUES (1, '1-1')
INSERT INTO odeljenje (id, oznaka) VALUES (2, '1-2')
INSERT INTO odeljenje (id, oznaka) VALUES (3, '1-3')
INSERT INTO odeljenje (id, oznaka) VALUES (4, '1-4')

INSERT INTO ucenik (id, ime, odeljenje) VALUES (10, '1-3', 1)
INSERT INTO ucenik (id, prezime, odeljenje) VALUES (20, '1-3', 2)

DELETE FROM odeljenje WHERE id = 1
UPDATE odeljenje SET id = 5 WHERE id = 2