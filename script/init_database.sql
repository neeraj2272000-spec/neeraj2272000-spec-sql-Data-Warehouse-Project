/*
=======================================================================
Create Database and Schemas
=======================================================================

Srcipt Purpose:
    THis script creates a new database named 'DataWarehouse_2' after checking if it already exists.
    If the database sxists, it is dropped and recreated. Aditionally, the script sets up three schemas within the database: 'bronze', 'sliver', and 'gold.

Warning
    Running this script will drop the entire 'DataWarehouse_2' database if it is exists.
    All data in the database will be permanen tly deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and create the 'DataWarehouse_2' database.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse_2')
BEGIN
    ALTER DATABSE DataWarehouse_2 SET SINGLE USER WITH ROLLBACK IMMEDIATE;
END;
GO

-- Create the 'DataWarehouse_2' database 
CREATE DATABSE DataWarrehouse_2;
GO

USE DataWarehouse_2;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
