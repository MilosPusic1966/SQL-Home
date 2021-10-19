DECLARE @uspeh as VARCHAR(10) 
DECLARE @prosek as FLOAT
DECLARE @br AS INT = 
(SELECT COUNT(ocena) from ocena 
join raspodela on raspodela_id = raspodela.id
where ucenik_id = 2 and godina_id = 2)
SELECT @br as broj
IF @br = 0 
BEGIN
	SET @uspeh = 'neoc'
END
ELSE
BEGIN
	SET @prosek = (select avg(ocena) from ocena 
	join raspodela on raspodela_id = raspodela.id
	where ucenik_id = 2 and godina_id = 2)
	SET @uspeh = 
	CASE
		WHEN 2 <4 THEN 'aaa'
		WHEN 2 >4 THEN 'bbb'
	END
END
SELECT @uspeh

