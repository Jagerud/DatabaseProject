/*USE [nyaretest]*/

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

CREATE TABLE [dbo].[Anställd](
	[Anställningsnummer] [smallint] NOT NULL,
	[Namn] [nchar](35) NOT NULL,
	[Timpris] [smallint] NOT NULL,
	[Avslutad_anställning] [date] NULL CONSTRAINT [DF_Anställd2_Avslutad_anställning]  DEFAULT (NULL),
 CONSTRAINT [PK_Anställd2] PRIMARY KEY CLUSTERED 
(
	[Anställningsnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Anställd]  WITH CHECK ADD  CONSTRAINT [CK_Anställd] CHECK  (([Timpris]>=(0) AND [Timpris]<=(5000)))
GO

ALTER TABLE [dbo].[Anställd] CHECK CONSTRAINT [CK_Anställd]
GO

ALTER TABLE [dbo].[Anställd]  WITH CHECK ADD  CONSTRAINT [CK_Anställd_1] CHECK  (([Anställningsnummer] like '[0-9][0-9][0-9][0-9]'))
GO

ALTER TABLE [dbo].[Anställd] CHECK CONSTRAINT [CK_Anställd_1]
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

CREATE TABLE [dbo].[Arbetstid](
	[Uppgiftsnamn] [nchar](300) NOT NULL,
	[Projektnummer] [int] NOT NULL,
	[Befattningsnummer] [int] NOT NULL,
	[Datum] [date] NOT NULL CONSTRAINT [DF_Arbetstid_Datum]  DEFAULT (CONVERT([date],getdate())),
	[Arbetade_Timmar] [tinyint] NOT NULL,
 CONSTRAINT [PK_Arbetstid_1] PRIMARY KEY CLUSTERED 
(
	[Uppgiftsnamn] ASC,
	[Projektnummer] ASC,
	[Befattningsnummer] ASC,
	[Datum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Arbetstid]  WITH CHECK ADD  CONSTRAINT [FK_Arbetstid_Arbetsuppgift] FOREIGN KEY([Projektnummer], [Uppgiftsnamn])
REFERENCES [dbo].[Arbetsuppgift] ([Projektnummer], [Uppgiftsnamn])
GO

ALTER TABLE [dbo].[Arbetstid] CHECK CONSTRAINT [FK_Arbetstid_Arbetsuppgift]
GO

ALTER TABLE [dbo].[Arbetstid]  WITH CHECK ADD  CONSTRAINT [FK_Arbetstid_Befattning] FOREIGN KEY([Befattningsnummer], [Projektnummer])
REFERENCES [dbo].[Befattning] ([Befattningsnummer], [Projektnummer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Arbetstid] CHECK CONSTRAINT [FK_Arbetstid_Befattning]
GO

ALTER TABLE [dbo].[Arbetstid]  WITH CHECK ADD  CONSTRAINT [CK_Arbetstid] CHECK  (([Arbetade_Timmar]>=(0) AND [Arbetade_Timmar]<=(24)))
GO

ALTER TABLE [dbo].[Arbetstid] CHECK CONSTRAINT [CK_Arbetstid]
GO

ALTER TABLE [dbo].[Arbetstid]  WITH CHECK ADD  CONSTRAINT [CK_Arbetstid_1] CHECK  ((CONVERT([date],[Datum])<=CONVERT([date],getdate())))
GO

ALTER TABLE [dbo].[Arbetstid] CHECK CONSTRAINT [CK_Arbetstid_1]
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

CREATE TABLE [dbo].[Dag](
	[Befattningsnummer] [int] NOT NULL,
	[Projektnummer] [int] NOT NULL,
	[Anställningsnummer] [smallint] NOT NULL,
	[Dag] [date] NOT NULL CONSTRAINT [DF_Dag_Dag]  DEFAULT (CONVERT([date],getdate())),
 CONSTRAINT [PK_Dag] PRIMARY KEY CLUSTERED 
(
	[Projektnummer] ASC,
	[Anställningsnummer] ASC,
	[Befattningsnummer] ASC,
	[Dag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Dag]  WITH CHECK ADD  CONSTRAINT [FK_Dag_Anställd] FOREIGN KEY([Anställningsnummer])
REFERENCES [dbo].[Anställd] ([Anställningsnummer])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Dag] CHECK CONSTRAINT [FK_Dag_Anställd]
GO

ALTER TABLE [dbo].[Dag]  WITH CHECK ADD  CONSTRAINT [FK_Dag_Befattning] FOREIGN KEY([Befattningsnummer], [Projektnummer])
REFERENCES [dbo].[Befattning] ([Befattningsnummer], [Projektnummer])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Dag] CHECK CONSTRAINT [FK_Dag_Befattning]
GO

