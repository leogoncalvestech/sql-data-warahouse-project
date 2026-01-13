/* 


Descrição do Script
O objetivo deste script é criar um novo banco de dados chamado 'DataWarehouse' após verificar se ele já existe. Caso o banco de dados já exista, ele será excluído e recriado. Além disso, o script configura três esquemas dentro do banco de dados: 'bronze', 'silver' e 'gold'.

AVISO: A execução deste script excluirá todo o banco de dados 'DataWarehouse' se ele existir. Todos os dados serão excluídos permanentemente. Proceda com cautela e certifique-se de ter backups adequados antes de executar este script.

Código SQL
Note que, embora a descrição mencione o esquema 'gold', a imagem do código termina no esquema 'silver'. Abaixo está o código completo incluindo a parte final mencionada na descrição:
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
