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
           (99002
           ,3000000
           ,'1999-01-11'
           ,'1999-03-12'
           ,'Utveckling av databaserat kassa- och prism�rkningssystem f�r Snabbk�pet AB. (Se avtalet f�r detaljer.)'
           ,null);
INSERT INTO [dbo].[Projekt]
           ([Projektnummer]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Projektbeskrivning]
           ,[Faktiskt_Slutdatum])
     VALUES
           (98142
           ,3000000
           ,'1998-10-01'
           ,'1999-01-04'
           ,'Anpassning av �rendehanteringsystemet p� F�rs�kringskassan. (Se avtalet f�r detaljer.)'
           ,null);
INSERT INTO [dbo].[Projekt]
           ([Projektnummer]
           ,[Budget]
           ,[Startdatum]
           ,[Slutdatum]
           ,[Projektbeskrivning]
           ,[Faktiskt_Slutdatum])
     VALUES
           (99003
           ,2000000
           ,'1999-01-11'
           ,'1999-02-24'
           ,'Utveckla s�kerheten f�r den Internetbaserad aktiehandeln hos WebbAktier AB. (Se avtalet f�r detaljer.)'
           ,null)
GO


