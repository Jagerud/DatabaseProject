/*USE [nyaretest]*/
GO

INSERT INTO [dbo].[Anst�lld]
           ([Anst�llningsnummer]
           ,[Namn]
           ,[Timpris]
           ,[Avslutad_anst�llning])
     VALUES
           (2837
           ,'Arne Bengtsson'
           ,1200
           ,null);
INSERT INTO [dbo].[Anst�lld]
           ([Anst�llningsnummer]
           ,[Namn]
           ,[Timpris]
           ,[Avslutad_anst�llning])
     VALUES
           (2744
           ,'Ann-Sofie Mejg�rd'
           ,1200
           ,null);
INSERT INTO [dbo].[Anst�lld]
           ([Anst�llningsnummer]
           ,[Namn]
           ,[Timpris]
           ,[Avslutad_anst�llning])
     VALUES
           (1455
           ,'Nils S�derstr�m'
           ,750
           ,null);
INSERT INTO [dbo].[Anst�lld]
           ([Anst�llningsnummer]
           ,[Namn]
           ,[Timpris]
           ,[Avslutad_anst�llning])
     VALUES
           (2185
           ,'Kicki Nyberg'
           ,850
           ,null);
INSERT INTO [dbo].[Anst�lld]
           ([Anst�llningsnummer]
           ,[Namn]
           ,[Timpris]
           ,[Avslutad_anst�llning])
     VALUES
           (2011
           ,'Willy Dahlgren'
           ,800
           ,null);
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

INSERT INTO [dbo].[Projektledare]
           ([Projektnummer]
           ,[Anst�llningsnummer]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (99002,
           2837,
           '1999-01-11',
           '1999-03-12');
INSERT INTO [dbo].[Projektledare]
           ([Projektnummer]
           ,[Anst�llningsnummer]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (99003,
           2744,
           '1999-01-11',
           '1999-02-24')
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
           ,'F�rstudie'
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
           ,'F�rstudie'
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




INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (2
           ,99002
           ,null
           ,'Systemerare');
INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (3
           ,99002
           ,null
           ,'Systemerare');
INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (4
           ,99002
           ,null
           ,'Applikationsutvecklare');
INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (2
           ,99003
           ,null
           ,'Systemerare');
INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (3
           ,99003
           ,null
           ,'Applikationsutvecklare');
INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (4
           ,99003
           ,null
           ,'Applikationsutvecklare');
INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (5
           ,99003
           ,null
           ,'Systemerare');
INSERT INTO [dbo].[Befattning]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Befattningsbeskrivning])
     VALUES
           (8
           ,99003
           ,null
           ,'Tekniker')
GO

INSERT INTO [dbo].[Dag]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Dag])
     VALUES
           (2
           ,99002
           ,1455
           ,'1999-03-12');
INSERT INTO [dbo].[Dag]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Dag])
     VALUES
           (2
           ,99002
           ,1455
           ,'1999-03-13');
INSERT INTO [dbo].[Dag]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Dag])
     VALUES
           (2
           ,99002
           ,1455
           ,'1999-03-17');
INSERT INTO [dbo].[Dag]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Anst�llningsnummer]
           ,[Dag])
     VALUES
           (3
           ,99002
           ,2185
           ,'1999-05-12')
GO
INSERT INTO [dbo].[Arbetsuppgift]
           ([Projektnummer]
           ,[Uppgiftsnamn]
           ,[Etappsnummer])
     VALUES
           (99002
           ,'Nul�gesanalys'
           ,1);
INSERT INTO [dbo].[Arbetsuppgift]
           ([Projektnummer]
           ,[Uppgiftsnamn]
           ,[Etappsnummer])
     VALUES
           (99002
           ,'�tg�rdsbeskrivning'
           ,1);
INSERT INTO [dbo].[Arbetsuppgift]
           ([Projektnummer]
           ,[Uppgiftsnamn]
           ,[Etappsnummer])
     VALUES
           (99002
           ,'Transaktionsanalys'
           ,2);
INSERT INTO [dbo].[Arbetsuppgift]
           ([Projektnummer]
           ,[Uppgiftsnamn]
           ,[Etappsnummer])
     VALUES
           (99003
           ,'Prototyputveckling av de tv� b�sta alternativen'
           ,3);
INSERT INTO [dbo].[Arbetsuppgift]
           ([Projektnummer]
           ,[Uppgiftsnamn]
           ,[Etappsnummer])
     VALUES
           (99003
           ,'�tg�rdsbeskrivning'
           ,1);
INSERT INTO [dbo].[Arbetsuppgift]
           ([Projektnummer]
           ,[Uppgiftsnamn]
           ,[Etappsnummer])
     VALUES
           (99002
           ,'Datastrukturanalys'
           ,2)
GO


INSERT INTO [dbo].[Arbetstid]
           ([Uppgiftsnamn]
           ,[Projektnummer]
           ,[Befattningsnummer]
           ,[Datum]
           ,[Arbetade_Timmar])
     VALUES
           ('Nul�gesanalys'
           ,99002
           ,2
           ,'1999-01-11'
           ,8);
INSERT INTO [dbo].[Arbetstid]
           ([Uppgiftsnamn]
           ,[Projektnummer]
           ,[Befattningsnummer]
           ,[Datum]
           ,[Arbetade_Timmar])
     VALUES
           ('Nul�gesanalys'
           ,99002
           ,2
           ,'1999-01-12'
           ,6);
INSERT INTO [dbo].[Arbetstid]
           ([Uppgiftsnamn]
           ,[Projektnummer]
           ,[Befattningsnummer]
           ,[Datum]
           ,[Arbetade_Timmar])
     VALUES
           ('�tg�rdsbeskrivning'
           ,99002
           ,2
           ,'1999-01-13'
           ,0);
INSERT INTO [dbo].[Arbetstid]
           ([Uppgiftsnamn]
           ,[Projektnummer]
           ,[Befattningsnummer]
           ,[Datum]
           ,[Arbetade_Timmar])
     VALUES
           ('�tg�rdsbeskrivning'
           ,99003
           ,2
           ,'1999-04-12'
           ,6)
GO


INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (2
           ,99002
           ,'Nul�gesanalys'
           ,'1999-01-11'
           ,'1999-01-14');
INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (2
           ,99002
           ,'�tg�rdsbeskrivning'
           ,'1999-01-13'
           ,'1999-01-16');
INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (2
           ,99002
           ,'Transaktionsanalys'
           ,'1999-01-17'
           ,'1999-01-18');
INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (2
           ,99002
           ,'Transaktionsanalys'
           ,'1999-01-23'
           ,'1999-01-25');
INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (3
           ,99002
           ,'Nul�gesanalys'
           ,'1999-01-11'
           ,'1999-01-12');
INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (3
           ,99002
           ,'�tg�rdsbeskrivning'
           ,'1999-01-13'
           ,'1999-01-16');

INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (3
           ,99002
           ,'Datastrukturanalys'
           ,'1999-01-17'
           ,'1999-01-19');

INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (2
           ,99003
           ,'�tg�rdsbeskrivning'
           ,'1999-01-15'
           ,'1999-01-16');

INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (3
           ,99003
           ,'Prototyputveckling av de tv� b�sta alternativen'
           ,'1999-01-28'
           ,'1999-01-30');

INSERT INTO [dbo].[Uppgiftsschema]
           ([Befattningsnummer]
           ,[Projektnummer]
           ,[Uppgiftsnamn]
           ,[Startdatum]
           ,[Slutdatum])
     VALUES
           (3
           ,99003
           ,'Prototyputveckling av de tv� b�sta alternativen'
           ,'1999-02-05'
           ,'1999-02-07')

GO

UPDATE [dbo].[Befattning]
   SET 
      [Anst�llningsnummer] = 1455
 WHERE [Befattningsnummer] = 2 AND [Projektnummer] = 99002;
 UPDATE [dbo].[Befattning]
 SET 
      [Anst�llningsnummer] = 2185
 WHERE [Befattningsnummer] = 3 AND [Projektnummer] = 99002;
 UPDATE [dbo].[Befattning]
 SET 
      [Anst�llningsnummer] = 2011
 WHERE [Befattningsnummer] = 3 AND [Projektnummer] = 99003;
 UPDATE [dbo].[Befattning]
   SET [Befattningsnummer] = 5
      ,[Projektnummer] = 99003
      ,[Anst�llningsnummer] = 2744
      ,[Befattningsbeskrivning] = 'Systemerare'
 WHERE [Befattningsnummer] = 5 AND [Projektnummer] = 99003 
GO 


