USE [ProjektDB]
GO

/****** Object:  Table [dbo].[Uppgiftsschema]    Script Date: 2017-12-20 16:43:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Uppgiftsschema](
	[Projektnummer] [int] NOT NULL,
	[Uppgiftsnamn] [nchar](300) NOT NULL,
	[Befattningsnummer] [int] NOT NULL,
	[Startdatum] [date] NOT NULL,
	[Slutdatum] [date] NOT NULL,
 CONSTRAINT [PK_Uppgiftsschema] PRIMARY KEY CLUSTERED 
(
	[Projektnummer] ASC,
	[Uppgiftsnamn] ASC,
	[Befattningsnummer] ASC,
	[Startdatum] ASC,
	[Slutdatum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Uppgiftsschema]  WITH CHECK ADD  CONSTRAINT [FK_Uppgiftsschema_Arbetsuppgift] FOREIGN KEY([Projektnummer], [Uppgiftsnamn])
REFERENCES [dbo].[Arbetsuppgift] ([Projektnummer], [Uppgiftsnamn])
GO

ALTER TABLE [dbo].[Uppgiftsschema] CHECK CONSTRAINT [FK_Uppgiftsschema_Arbetsuppgift]
GO

ALTER TABLE [dbo].[Uppgiftsschema]  WITH CHECK ADD  CONSTRAINT [FK_Uppgiftsschema_Befattning] FOREIGN KEY([Befattningsnummer], [Projektnummer])
REFERENCES [dbo].[Befattning] ([Befattningsnummer], [Projektnummer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Uppgiftsschema] CHECK CONSTRAINT [FK_Uppgiftsschema_Befattning]
GO

ALTER TABLE [dbo].[Uppgiftsschema]  WITH CHECK ADD  CONSTRAINT [CK_Uppgiftsschema] CHECK  (([Slutdatum]>=[Startdatum]))
GO

ALTER TABLE [dbo].[Uppgiftsschema] CHECK CONSTRAINT [CK_Uppgiftsschema]
GO


