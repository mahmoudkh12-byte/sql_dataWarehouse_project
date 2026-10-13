use master;
go

if exists(select 1 from sys.databases where name ='Data_Warehouse')
begin
	ALTER DATABASE Data_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Data_Warehouse;
END;
go

create database Data_Warehouse
go
  
use Data_Warehouse
go

create schema bronze;
go 
create schema silver;
go
create schema gold;

