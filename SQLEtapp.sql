USE [ProjektDB]
GO

INSERT INTO [dbo].[Etapp]
           ([Etappsnummer]
           ,[Projektnummer]
           ,[Etappnamn]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Faktiskt_Slutdatum])
     VALUES
           (1
           ,99002
           ,'Förstudie'
           ,300000
           ,'1999-01-11'
           ,'1999-03-12'
           ,null);
INSERT INTO [dbo].[Etapp]
           ([Etappsnummer]
           ,[Projektnummer]
           ,[Etappnamn]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Faktiskt_Slutdatum])
     VALUES
           (2
           ,99002
           ,'Analys'
           ,700000
           ,'1999-01-15'
           ,'1999-01-27'
           ,null);
INSERT INTO [dbo].[Etapp]
           ([Etappsnummer]
           ,[Projektnummer]
           ,[Etappnamn]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Faktiskt_Slutdatum])
     VALUES
           (3
           ,99002
           ,'Design'
           ,740000
           ,'1999-01-23'
           ,'1999-02-15'
           ,null);
INSERT INTO [dbo].[Etapp]
           ([Etappsnummer]
           ,[Projektnummer]
           ,[Etappnamn]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Faktiskt_Slutdatum])
     VALUES
           (1
           ,99003
           ,'Förstudie'
           ,200000
           ,'1999-01-11'
           ,'1999-01-16'
           ,null);
INSERT INTO [dbo].[Etapp]
           ([Etappsnummer]
           ,[Projektnummer]
           ,[Etappnamn]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Faktiskt_Slutdatum])
     VALUES
           (2
           ,99003
           ,'Analys'
           ,550000
           ,'1999-01-15'
           ,'1999-01-29'
           ,null);
INSERT INTO [dbo].[Etapp]
           ([Etappsnummer]
           ,[Projektnummer]
           ,[Etappnamn]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Faktiskt_Slutdatum])
     VALUES
           (3
           ,99003
           ,'Prototyping'
           ,750000
           ,'1999-01-26'
           ,'1999-02-10'
           ,null)
GO


