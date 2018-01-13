/*USE [nyaretest]*/
GO

UPDATE [dbo].[Befattning]
   SET 
      [Anställningsnummer] = 2744
 WHERE [Befattningsnummer] = 2 AND [Projektnummer] = 99003;

GO

UPDATE [dbo].[Befattning]
   SET 
      [Anställningsnummer] = 1455
 WHERE [Befattningsnummer] = 3 AND [Projektnummer] = 99002;

GO

DELETE FROM [dbo].[Befattning]
      WHERE Befattningsnummer = 2 AND Projektnummer = 99002
GO


