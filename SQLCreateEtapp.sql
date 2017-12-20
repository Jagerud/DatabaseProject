USE [ProjektDB]
GO

/****** Object:  Table [dbo].[Etapp]    Script Date: 2017-12-20 16:43:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Etapp](
	[Etappsnummer] [smallint] NOT NULL,
	[Projektnummer] [int] NOT NULL,
	[Etappnamn] [nchar](40) NOT NULL,
	[Budget] [int] NOT NULL,
	[Startdatum] [date] NOT NULL,
	[Slutdatum] [date] NOT NULL,
	[Faktiskt_Slutdatum] [date] NULL,
 CONSTRAINT [PK_Etapp] PRIMARY KEY CLUSTERED 
(
	[Etappsnummer] ASC,
	[Projektnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Etapp]  WITH CHECK ADD  CONSTRAINT [FK_Etapp_Projekt] FOREIGN KEY([Projektnummer])
REFERENCES [dbo].[Projekt] ([Projektnummer])
GO

ALTER TABLE [dbo].[Etapp] CHECK CONSTRAINT [FK_Etapp_Projekt]
GO

ALTER TABLE [dbo].[Etapp]  WITH CHECK ADD  CONSTRAINT [CK_Etapp] CHECK  (([Etappsnummer] like '[0-9][0-9]' OR [Etappsnummer] like '[0-9]'))
GO

ALTER TABLE [dbo].[Etapp] CHECK CONSTRAINT [CK_Etapp]
GO

ALTER TABLE [dbo].[Etapp]  WITH CHECK ADD  CONSTRAINT [CK_Etapp_1] CHECK  (([Budget]>=(0) AND [Budget]<=(100000000)))
GO

ALTER TABLE [dbo].[Etapp] CHECK CONSTRAINT [CK_Etapp_1]
GO

ALTER TABLE [dbo].[Etapp]  WITH CHECK ADD  CONSTRAINT [CK_Etapp_2] CHECK  (([Slutdatum]>[Startdatum]))
GO

ALTER TABLE [dbo].[Etapp] CHECK CONSTRAINT [CK_Etapp_2]
GO


