Create function classifierX()
returns sysname with schemabinding
begin
	declare @val varchar(30)
	if 'Hans' = Suser_sname()
		set @val='GroupAdmin'
	else if 'Susi' = suser_sname()
		set @val='GroupMarketing'
	return @val
end








alter resource governor
	with (Classifier_function=dbo.classifier)
	
alter resource governor reconfigure

select * from sys.sysprocesses
select @@