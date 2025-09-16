USE master;
GO

-- If the database already exists, drop it safely
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Datawarehouse;
END;
GO

-- Create a fresh database
CREATE DATABASE Datawarehouse;
GO

-- Switch context to new database
USE Datawarehouse;
GO

-- Create schemas for layering data
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
