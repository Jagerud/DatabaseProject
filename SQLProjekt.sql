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
           ,'Utveckling av databaserat kassa- och prismärkningssystem för Snabbköpet AB. (Se avtalet för detaljer.)'
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
           ,'Anpassning av ärendehanteringsystemet på Försäkringskassan. (Se avtalet för detaljer.)'
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
           ,'Utveckla säkerheten för den Internetbaserad aktiehandeln hos WebbAktier AB. (Se avtalet för detaljer.)'
           ,null)
GO


