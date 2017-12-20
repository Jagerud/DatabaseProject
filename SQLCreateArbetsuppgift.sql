USE [ProjektDB]
GO

/****** Object:  Table [dbo].[Arbetsuppgift]    Script Date: 2017-12-20 16:42:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Arbetsuppgift](
	[Projektnummer] [int] NOT NULL,
	[Uppgiftsnamn] [nchar](300) NOT NULL,
	[Etappsnummer] [smallint] NOT NULL,
 CONSTRAINT [PK_Arbetsuppgift] PRIMARY KEY CLUSTERED 
(
	[Projektnummer] ASC,
	[Uppgiftsnamn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Arbetsuppgift]  WITH CHECK ADD  CONSTRAINT [FK_Arbetsuppgift_Etapp] FOREIGN KEY([Etappsnummer], [Projektnummer])
REFERENCES [dbo].[Etapp] ([Etappsnummer], [Projektnummer])
ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Arbetsuppgift] CHECK CONSTRAINT [FK_Arbetsuppgift_Etapp]
GO


