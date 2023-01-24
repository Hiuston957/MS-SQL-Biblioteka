CREATE DATABASE [Biblioteka]
GO
USE [Biblioteka]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 23/01/2023 21:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[ISBN] [char](17) NOT NULL,
	[Imie] [nvarchar](20) NOT NULL,
	[Nazwisko] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Czytelnik]    Script Date: 23/01/2023 21:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Czytelnik](
	[ID_czytelnika] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](20) NOT NULL,
	[Nazwisko] [nvarchar](20) NOT NULL,
	[Adres_Miasto] [nvarchar](20) NOT NULL,
	[Adres_Ulica] [nvarchar](20) NULL,
	[Adres_NrLokalu] [nvarchar](10) NOT NULL,
	[Nr_telefonu] [char](9) NOT NULL,
 CONSTRAINT [PK_Czytelnik] PRIMARY KEY CLUSTERED 
(
	[ID_czytelnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ISBN_baza]    Script Date: 23/01/2023 21:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ISBN_baza](
	[ISBN] [char](17) NOT NULL,
	[Typ] [nvarchar](20) NOT NULL,
	[Tytul] [nvarchar](50) NOT NULL,
	[Wydawnictwo] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_ISBN_baza] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operacje]    Script Date: 23/01/2023 21:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operacje](
	[ID_Ksiazki] [int] NOT NULL,
	[ID_Czytelnika] [int] NOT NULL,
	[ID_Pracownik] [int] NOT NULL,
	[Data_Wypozyczenia] [date] NOT NULL,
	[Dlugosc_Wypozyczenia] [int] NOT NULL,
	[Data_Oddania] [date] NULL,
	[Szacowany_zwrot] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 23/01/2023 21:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownik](
	[ID_pracownika] [int] IDENTITY(1,1) NOT NULL,
	[Imie] [nvarchar](20) NOT NULL,
	[Nazwisko] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Pracownik] PRIMARY KEY CLUSTERED 
(
	[ID_pracownika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publikacja]    Script Date: 23/01/2023 21:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publikacja](
	[ID_Ksiazki] [int] IDENTITY(1,1) NOT NULL,
	[ISBN] [char](17) NOT NULL,
 CONSTRAINT [PK_Publikacja] PRIMARY KEY CLUSTERED 
(
	[ID_Ksiazki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Operacje] ADD  CONSTRAINT [DF_Operacje_Data_Wypozyczenia]  DEFAULT (getdate()) FOR [Data_Wypozyczenia]
GO
ALTER TABLE [dbo].[Autor]  WITH CHECK ADD  CONSTRAINT [FK_Autor_ISBN_baza] FOREIGN KEY([ISBN])
REFERENCES [dbo].[ISBN_baza] ([ISBN])
GO
ALTER TABLE [dbo].[Autor] CHECK CONSTRAINT [FK_Autor_ISBN_baza]
GO
ALTER TABLE [dbo].[Operacje]  WITH CHECK ADD  CONSTRAINT [FK_Operacje_Czytelnik] FOREIGN KEY([ID_Czytelnika])
REFERENCES [dbo].[Czytelnik] ([ID_czytelnika])
GO
ALTER TABLE [dbo].[Operacje] CHECK CONSTRAINT [FK_Operacje_Czytelnik]
GO
ALTER TABLE [dbo].[Operacje]  WITH CHECK ADD  CONSTRAINT [FK_Operacje_Pracownik] FOREIGN KEY([ID_Pracownik])
REFERENCES [dbo].[Pracownik] ([ID_pracownika])
GO
ALTER TABLE [dbo].[Operacje] CHECK CONSTRAINT [FK_Operacje_Pracownik]
GO
ALTER TABLE [dbo].[Operacje]  WITH CHECK ADD  CONSTRAINT [FK_Operacje_Publikacja] FOREIGN KEY([ID_Ksiazki])
REFERENCES [dbo].[Publikacja] ([ID_Ksiazki])
GO
ALTER TABLE [dbo].[Operacje] CHECK CONSTRAINT [FK_Operacje_Publikacja]
GO
ALTER TABLE [dbo].[Publikacja]  WITH CHECK ADD  CONSTRAINT [FK_Publikacja_ISBN_baza] FOREIGN KEY([ISBN])
REFERENCES [dbo].[ISBN_baza] ([ISBN])
GO
ALTER TABLE [dbo].[Publikacja] CHECK CONSTRAINT [FK_Publikacja_ISBN_baza]
GO
ALTER TABLE [dbo].[Operacje]  WITH CHECK ADD  CONSTRAINT [Data_Oddania >= Data_Wypozyczenia] CHECK  (([Data_Oddania]>=[Data_Wypozyczenia]))
GO
ALTER TABLE [dbo].[Operacje] CHECK CONSTRAINT [Data_Oddania >= Data_Wypozyczenia]
GO
ALTER TABLE [dbo].[Operacje]  WITH CHECK ADD  CONSTRAINT [Dlugosc_Wypozyczenia > 0] CHECK  (([Dlugosc_Wypozyczenia]>(0)))
GO
ALTER TABLE [dbo].[Operacje] CHECK CONSTRAINT [Dlugosc_Wypozyczenia > 0]
GO
