/*USE [w]*/
GO

/****** Object:  Trigger [dbo].[trigger_deleteBefattning]    Script Date: 2018-01-11 15:00:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trigger_deleteBefattning]
	ON [dbo].[Befattning]
   INSTEAD OF DELETE
AS 
BEGIN
	SET NOCOUNT ON;

	DECLARE @Befattningsnummer INT, @Projektnummer INT
	SELECT @Befattningsnummer = Befattningsnummer, @Projektnummer = Projektnummer
	FROM deleted

	IF EXISTS (SELECT Arbetade_Timmar FROM Arbetstid WHERE @Befattningsnummer = Befattningsnummer AND @Projektnummer = Projektnummer 
		GROUP BY Befattningsnummer, Projektnummer, Arbetade_Timmar HAVING Arbetade_Timmar > 0)
		BEGIN
			RAISERROR('Befattningen är påbörjad och kan inte tas bort', 16, 1)
			ROLLBACK TRANSACTION
		END
	ELSE
		BEGIN
			DELETE FROM Befattning WHERE @Befattningsnummer = Befattningsnummer AND @Projektnummer = Projektnummer
		END

END

GO


CREATE TRIGGER [dbo].[trigger_projektBefattningNew]
	ON  [dbo].[Befattning]
	AFTER INSERT, UPDATE

AS 

DECLARE @Projektnummer INT, @ProjektnummerNy INT,  @Befattningsnummer INT, @BefattningsnummerNY INT, @Anställningsnummer INT, 
@Startdatum DATE, @StartdatumNy DATE, @Slutdatum DATE, @SlutdatumNy DATE, @Rows INT, @Rows2 INT, @Counter INT, @Counter2 INT,
@Break INT

SELECT @Counter2 = 0, @Counter = 0, @Break = 0

SELECT @Anställningsnummer = Anställningsnummer, @BefattningsnummerNY = Befattningsnummer, @ProjektnummerNy = Projektnummer
FROM inserted

SELECT @Projektnummer = Projektnummer, @Befattningsnummer = Befattningsnummer 
FROM Befattning 
WHERE Anställningsnummer = @Anställningsnummer

Select @Rows = (SELECT COUNT(*)
FROM Uppgiftsschema 
WHERE Projektnummer = @Projektnummer AND Befattningsnummer = @Befattningsnummer)

Select @Rows2 = (SELECT COUNT(*)
FROM Uppgiftsschema 
WHERE Projektnummer = @ProjektnummerNy AND Befattningsnummer = @BefattningsnummerNy)

WHILE (@Rows > @Counter)
	BEGIN
		SELECT @Startdatum = Startdatum, @Slutdatum = Slutdatum 
		FROM Uppgiftsschema 
		WHERE Projektnummer = @Projektnummer AND Befattningsnummer = @Befattningsnummer
		ORDER BY Befattningsnummer
		OFFSET @Counter ROWS
		FETCH NEXT 1 ROWS ONLY 

		WHILE (@Rows2 > @Counter2)
			BEGIN
				SELECT @StartdatumNy = Startdatum, @SlutdatumNy = Slutdatum 
				FROM Uppgiftsschema 
				WHERE Projektnummer = @ProjektnummerNy AND Befattningsnummer = @BefattningsnummerNy
				ORDER BY Befattningsnummer
				OFFSET @Counter2 ROWS
				FETCH NEXT 1 ROWS ONLY
		
				IF (@StartdatumNy >= @Startdatum AND @SlutdatumNy <= @Slutdatum)
					BEGIN
						BEGIN TRANSACTION
						RAISERROR('Har redan arbetstid!', 16, 1)
						ROLLBACK TRANSACTION
						SELECT @Break = 1 
						BREAK
						
					END
				IF ( @Break = 1)
					BEGIN
						BREAK
					END
				SET @Counter2 = @Counter2 +1;
			END
		SET @Counter = @Counter +1;
	END
	



GO


CREATE TRIGGER [dbo].[trigger_startadBefattning]
ON [dbo].[Befattning]

	FOR INSERT, UPDATE 
	
	AS

	DECLARE @Befattningsnummer INT, @Anställningsnummer INT, @Projektnummer INT, @Uppgiftsnamn nchar
	SELECT @Befattningsnummer = Befattningsnummer, @Anställningsnummer = Anställningsnummer, @Projektnummer = Projektnummer 
	FROM inserted

	IF EXISTS (SELECT Arbetade_Timmar FROM Arbetstid WHERE @Befattningsnummer = Befattningsnummer AND @Projektnummer = Projektnummer 
	 GROUP BY Befattningsnummer, Projektnummer,Arbetade_Timmar HAVING Arbetade_Timmar > 0)
		BEGIN
			RAISERROR('Befattningen är redan påbörjad!', 16, 1)
			ROLLBACK TRANSACTION
		END

GO


