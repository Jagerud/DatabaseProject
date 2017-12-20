USE [ProjektDB]
GO

/****** Object:  Table [dbo].[Befattning]    Script Date: 2017-12-20 16:42:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Befattning](
	[Befattningsnummer] [int] NOT NULL,
	[Projektnummer] [int] NOT NULL,
	[Anställningsnummer] [smallint] NULL,
	[Befattningsbeskrivning] [nchar](40) NOT NULL,
 CONSTRAINT [PK_Befattning] PRIMARY KEY CLUSTERED 
(
	[Befattningsnummer] ASC,
	[Projektnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Befattning]  WITH CHECK ADD  CONSTRAINT [FK_Befattning_Projekt] FOREIGN KEY([Projektnummer])
REFERENCES [dbo].[Projekt] ([Projektnummer])
GO

ALTER TABLE [dbo].[Befattning] CHECK CONSTRAINT [FK_Befattning_Projekt]
GO

ALTER TABLE [dbo].[Befattning]  WITH CHECK ADD  CONSTRAINT [CK_Befattning] CHECK  (([Befattningsnummer] like '[0-9][0-9]' OR [Befattningsnummer] like '[0-9]'))
GO

ALTER TABLE [dbo].[Befattning] CHECK CONSTRAINT [CK_Befattning]
GO


