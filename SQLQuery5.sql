USE [ProjektDB]
GO

INSERT INTO [dbo].[Projekt]
           ([Projektnummer]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Projektbeskrivning]
           ,[Faktiskt_Slutdatum])
     VALUES
           (12345
           ,50000
           ,'1990-03-12'
           ,'2012-10-10'
           ,'Blablabla'
           ,null)
GO


