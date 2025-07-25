/*
====================================================
Create Database and Schemas
====================================================
Script Purpose: 
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/

USE master;
GO
  
-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (Select 1 From sys.databases WHERE name = 'DataWareHouse')
BEGIN
  ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWareHouse;
END;
GO
  
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
