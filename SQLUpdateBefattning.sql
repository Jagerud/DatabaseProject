USE [ProjektDB]
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
 WHERE [Befattningsnummer] = 3 AND [Projektnummer] = 99003
GO

