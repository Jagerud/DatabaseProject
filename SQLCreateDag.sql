USE [ProjektDB]
GO

/****** Object:  Table [dbo].[Dag]    Script Date: 2017-12-20 16:42:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Dag](
	[Befattningsnummer] [int] NOT NULL,
	[Projektnummer] [int] NOT NULL,
	[Anst�llningsnummer] [smallint] NOT NULL,
	[Dag] [date] NOT NULL,
 CONSTRAINT [PK_Dag] PRIMARY KEY CLUSTERED 
(
	[Projektnummer] ASC,
	[Anst�llningsnummer] ASC,
	[Befattningsnummer] ASC,
	[Dag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Dag]  WITH CHECK ADD  CONSTRAINT [FK_Dag_Anst�lld] FOREIGN KEY([Anst�llningsnummer])
REFERENCES [dbo].[Anst�lld] ([Anst�llningsnummer])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Dag] CHECK CONSTRAINT [FK_Dag_Anst�lld]
GO

ALTER TABLE [dbo].[Dag]  WITH CHECK ADD  CONSTRAINT [FK_Dag_Befattning] FOREIGN KEY([Befattningsnummer], [Projektnummer])
REFERENCES [dbo].[Befattning] ([Befattningsnummer], [Projektnummer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Dag] CHECK CONSTRAINT [FK_Dag_Befattning]
GO


