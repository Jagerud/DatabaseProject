/*USE [nyaretest]*/
GO

UPDATE [dbo].[Befattning]
   SET 
      [Anst�llningsnummer] = 2744
 WHERE [Befattningsnummer] = 2 AND [Projektnummer] = 99003;

GO

UPDATE [dbo].[Befattning]
   SET 
      [Anst�llningsnummer] = 1455
 WHERE [Befattningsnummer] = 3 AND [Projektnummer] = 99002;

GO

DELETE FROM [dbo].[Befattning]
      WHERE Befattningsnummer = 2 AND Projektnummer = 99002
GO


