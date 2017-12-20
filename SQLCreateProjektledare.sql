USE [ProjektDB]
GO

/****** Object:  Table [dbo].[Projektledare]    Script Date: 2017-12-20 16:43:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Projektledare](
	[Projektnummer] [int] NOT NULL,
	[Anställningsnummer] [smallint] NOT NULL,
	[Startdatum] [date] NOT NULL,
	[Slutdatum] [date] NULL,
 CONSTRAINT [PK_Projektledare] PRIMARY KEY CLUSTERED 
(
	[Projektnummer] ASC,
	[Anställningsnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Projektledare]  WITH CHECK ADD  CONSTRAINT [FK_Projektledare_Anställd] FOREIGN KEY([Anställningsnummer])
REFERENCES [dbo].[Anställd] ([Anställningsnummer])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Projektledare] CHECK CONSTRAINT [FK_Projektledare_Anställd]
GO

ALTER TABLE [dbo].[Projektledare]  WITH CHECK ADD  CONSTRAINT [FK_Projektledare_Projekt] FOREIGN KEY([Projektnummer])
REFERENCES [dbo].[Projekt] ([Projektnummer])
GO

ALTER TABLE [dbo].[Projektledare] CHECK CONSTRAINT [FK_Projektledare_Projekt]
GO

ALTER TABLE [dbo].[Projektledare]  WITH CHECK ADD  CONSTRAINT [CK_Projektledare] CHECK  (([Projektnummer] like '[0-9][0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[Projektledare] CHECK CONSTRAINT [CK_Projektledare]
GO

ALTER TABLE [dbo].[Projektledare]  WITH CHECK ADD  CONSTRAINT [CK_Projektledare_1] CHECK  (([Anställningsnummer] like '[0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[Projektledare] CHECK CONSTRAINT [CK_Projektledare_1]
GO

ALTER TABLE [dbo].[Projektledare]  WITH CHECK ADD  CONSTRAINT [CK_Projektledare_2] CHECK  (([Slutdatum]>[Startdatum]))
GO

ALTER TABLE [dbo].[Projektledare] CHECK CONSTRAINT [CK_Projektledare_2]
GO


