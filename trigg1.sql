alter trigger probni_tr 
on dbo.adresar 
after insert, update, delete
as
begin
select '-del-', * from deleted 
select '-ins-',* from inserted
end

drop trigger probni_tr 

insert into adresar (id, ime, telefon)values (3,'asd',333)
update adresar set id = 3 where id = 9
delete from adresar where ID = 3

create trigger probni_tr_insteed 
on dbo.adresar 
INSTEAD OF insert, update, delete
as
begin
select '-del-', * from deleted 
select '-ins-',* from inserted
print 'nije uradjeno'
end

drop trigger probni_tr_insteed 

alter trigger probni_ins
on dbo.adresar 
INSTEAD OF insert
as
begin
--select '-del-', * from deleted 
--select '-ins-',* from inserted
print 'insert'
end

create trigger probni_upd
on dbo.adresar 
INSTEAD OF update
as
begin
select '-del-', * from deleted 
select '-ins-',* from inserted
print 'upd'
end
create trigger probni_del
on dbo.adresar 
INSTEAD OF delete
as
begin
select '-del-', * from deleted 
select '-ins-',* from inserted
print 'brisanje'
end