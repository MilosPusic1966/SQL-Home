create table tip (
id int identity(1,1),
ime varchar (20)
PRIMARY KEY(id)
)
drop table adresar


create table adresar (
id int identity(1,1),
ime varchar (20),
telefon varchar(20),
tip int FOREIGN KEY (id) REFERENCES tip(id)
)

create trigger probni_trtip 
on dbo.tip
after insert, update, delete
as
begin
select '-del-', * from deleted 
select '-ins-',* from inserted
print ' = = tip = ='
end

create trigger probni_adr
on dbo.tip
after insert, update, delete
as
begin
select '-del-', * from deleted 
select '-ins-',* from inserted
print ' = = adr = ='
end

insert into tip values('vvv')