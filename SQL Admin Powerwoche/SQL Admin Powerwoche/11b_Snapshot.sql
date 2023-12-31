

-- =============================================
-- Create Database Snapshot Template
-- =============================================
USE master
GO


-- Create the database snapshot
CREATE DATABASE SnapshotDBName ON
( NAME = logNamederOrgDatendatei, 
FILENAME = 'PfadundDateiname der Snapshotdatendatei.mdf')
AS SNAPSHOT OF OrgDb;
GO

create database  nw_1400 
ON
(
	NAME=Northwind, --alte mdf
	FILENAME='D:\_SQLDBDATA\nw_1400 .mdf'  --StdPfad des SQL Server
)   as snapshot of northwind


use northwind;
GO

update customers set city = 'BGH' where customerid = 'ALFKI'

select * from customers








--Snapshot-----------------TSQL

--Kann man mehrere SN machen?
--ja

--Kann man einen SN backupen?
--N�

--Kann man die OrgDB backupen?
--Ja klar

-- Welche Daten wurden ge�ndert--per TSQL zB

select * from Northwind..customers
except
select * from nw_1400..customers


--kann man den SN restoren?
--n�

--kann man die OrgDB restoren?
--jein--kein normaler restore
--f�r den normal restore m�ssen alle SN gel�scht werden
--Restore von SN m�glich

--alle user m�ssen von allen DBs (northwind und Snapshot) verscheucht werden
use master;
GO

restore database northwind
from database_snapshot ='nw_1400'


select * from sysprocesses 
	where 
		spid > 50  --Userconnections
		and 
		dbid in(db_id('nortwhwind'),db_id('sn_northwind_1200'))



kill 56


