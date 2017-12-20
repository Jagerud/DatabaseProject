USE [ProjektDB]
GO

/****** Object:  Table [dbo].[Projekt]    Script Date: 2017-12-20 16:43:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Projekt](
	[Projektnummer] [int] NOT NULL,
	[Budget] [int] NOT NULL,
	[Startdatum] [date] NOT NULL,
	[Slutdatum] [date] NOT NULL,
	[Projektbeskrivning] [nchar](300) NOT NULL,
	[Faktiskt_Slutdatum] [date] NULL CONSTRAINT [DF_Projekt_Faktiskt_Slutdatum]  DEFAULT (NULL),
 CONSTRAINT [PK_Projekt] PRIMARY KEY CLUSTERED 
(
	[Projektnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Projekt]  WITH CHECK ADD  CONSTRAINT [CK_Projekt] CHECK  (([Projektnummer] like '[0-9][0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[Projekt] CHECK CONSTRAINT [CK_Projekt]
GO

ALTER TABLE [dbo].[Projekt]  WITH CHECK ADD  CONSTRAINT [CK_Projekt_1] CHECK  (([Budget]>=(0) AND [Budget]<=(100000000)))
GO

ALTER TABLE [dbo].[Projekt] CHECK CONSTRAINT [CK_Projekt_1]
GO

ALTER TABLE [dbo].[Projekt]  WITH CHECK ADD  CONSTRAINT [CK_Projekt_2] CHECK  (([Slutdatum]>[Startdatum]))
GO

ALTER TABLE [dbo].[Projekt] CHECK CONSTRAINT [CK_Projekt_2]
GO


