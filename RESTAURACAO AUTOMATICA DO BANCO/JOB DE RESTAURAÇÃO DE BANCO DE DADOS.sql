--JOB DE RESTAURAÇÃO DE BANCO DE DADOS

USE [master]

-- SELECIONE A TABELA QUE SERA RESTAURADA E O CAMINHO DO BCK QUE SERÁ RESTAURADO
RESTORE DATABASE [tratamento_banco] FROM  DISK = N'C:\backups\mvs-diario.bak' WITH  FILE = 1,  
MOVE N'iVertex_Data' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MVS\MSSQL\DATA\tratamento_banco_Data.MDF',  
MOVE N'iVertex_Log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL14.MVS\MSSQL\DATA\tratamento_banco_Log.LDF',  
NOUNLOAD,  
REPLACE,  
STATS = 5

GO