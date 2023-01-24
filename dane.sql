USE [Biblioteka]
GO
SET IDENTITY_INSERT [dbo].[Czytelnik] ON 
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (1, N'Jan', N'Klubowicz', N'Kraków', N'Krakowska', N'33', N'123447493')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (2, N'Mateusz', N'Głośnostępski', N'Kraków', N'Wieliczkowej', N'34/a', N'739368749')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (3, N'Kacper', N'Starodawny', N'Wieliczka', N'Solna', N'21', N'222338840')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (4, N'Kacper', N'Tupolewski', N'Chorzów', N'Chorągiewska', N'555', N'938402844')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (6, N'Szymon', N'Ewakowski', N'Kraków', N'Czarne badyle', N'18', N'364926492')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (8, N'Julia', N'Chochlowska', N'Wieliczka', N'Kometkowa', N'564/c', N'837493749')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (9, N'Barbara', N'Łokieć', N'Gdańsk', N'Torronto', N'8564/91', N'478512369')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (11, N'Monika', N'Lizak', N'Kraków', N'Wawel', N'1', N'985665174')
GO
INSERT [dbo].[Czytelnik] ([ID_czytelnika], [Imie], [Nazwisko], [Adres_Miasto], [Adres_Ulica], [Adres_NrLokalu], [Nr_telefonu]) VALUES (12, N'Dominik', N'Kapibara', N'Kraków', N'Klatkowa', N'64', N'745845684')
GO
SET IDENTITY_INSERT [dbo].[Czytelnik] OFF
GO
SET IDENTITY_INSERT [dbo].[Pracownik] ON 
GO
INSERT [dbo].[Pracownik] ([ID_pracownika], [Imie], [Nazwisko]) VALUES (1, N'Jan', N'Kowal')
GO
INSERT [dbo].[Pracownik] ([ID_pracownika], [Imie], [Nazwisko]) VALUES (2, N'Anna', N'Nowak')
GO
INSERT [dbo].[Pracownik] ([ID_pracownika], [Imie], [Nazwisko]) VALUES (3, N'Damian', N'Prawisza')
GO
INSERT [dbo].[Pracownik] ([ID_pracownika], [Imie], [Nazwisko]) VALUES (4, N'Oskar', N'Tunelowicz')
GO
SET IDENTITY_INSERT [dbo].[Pracownik] OFF
GO
INSERT [dbo].[ISBN_baza] ([ISBN], [Typ], [Tytul], [Wydawnictwo]) VALUES (N'978-83-2805-380-9', N'Album', N'Chleb', N'Wydawnictwo Smaczne')
GO
INSERT [dbo].[ISBN_baza] ([ISBN], [Typ], [Tytul], [Wydawnictwo]) VALUES (N'978-83-8049-852-5', N'Książka', N'Opowieść o zapomnianej kuchni polskiej', N'Wydawnictwo Smaczne')
GO
INSERT [dbo].[ISBN_baza] ([ISBN], [Typ], [Tytul], [Wydawnictwo]) VALUES (N'978-83-8169-177-2', N'Album', N'Ramen. Zupa szczęścia i miłości', N'Wydawnictwo Smaczne')
GO
INSERT [dbo].[ISBN_baza] ([ISBN], [Typ], [Tytul], [Wydawnictwo]) VALUES (N'978-83-8191-620-2', N'Książka', N'Ja śpiewam, a góry tańczą', N'Stara Era')
GO
INSERT [dbo].[ISBN_baza] ([ISBN], [Typ], [Tytul], [Wydawnictwo]) VALUES (N'978-83-965277-4-5', N'Czasopismo', N'Odmawiam myślenia', N'Heliot')
GO
SET IDENTITY_INSERT [dbo].[Publikacja] ON 
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (1, N'978-83-2805-380-9')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (2, N'978-83-2805-380-9')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (3, N'978-83-2805-380-9')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (6, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (7, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (8, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (9, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (10, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (11, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (12, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (13, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (14, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (15, N'978-83-8049-852-5')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (16, N'978-83-8191-620-2')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (17, N'978-83-8191-620-2')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (18, N'978-83-8191-620-2')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (19, N'978-83-8191-620-2')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (20, N'978-83-8191-620-2')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (21, N'978-83-8191-620-2')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (22, N'978-83-8191-620-2')
GO
INSERT [dbo].[Publikacja] ([ID_Ksiazki], [ISBN]) VALUES (25, N'978-83-8191-620-2')
GO
SET IDENTITY_INSERT [dbo].[Publikacja] OFF
GO
INSERT [dbo].[Operacje] ([ID_Ksiazki], [ID_Czytelnika], [ID_Pracownik], [Data_Wypozyczenia], [Dlugosc_Wypozyczenia], [Data_Oddania], [Szacowany_zwrot]) VALUES (1, 2, 1, CAST(N'2023-01-16' AS Date), 3, NULL, CAST(N'2023-01-19' AS Date))
GO
INSERT [dbo].[Operacje] ([ID_Ksiazki], [ID_Czytelnika], [ID_Pracownik], [Data_Wypozyczenia], [Dlugosc_Wypozyczenia], [Data_Oddania], [Szacowany_zwrot]) VALUES (3, 1, 4, CAST(N'2023-01-14' AS Date), 4, CAST(N'2023-01-15' AS Date), CAST(N'2023-01-18' AS Date))
GO
INSERT [dbo].[Operacje] ([ID_Ksiazki], [ID_Czytelnika], [ID_Pracownik], [Data_Wypozyczenia], [Dlugosc_Wypozyczenia], [Data_Oddania], [Szacowany_zwrot]) VALUES (3, 3, 3, CAST(N'2023-01-15' AS Date), 33, NULL, CAST(N'2023-02-17' AS Date))
GO
INSERT [dbo].[Operacje] ([ID_Ksiazki], [ID_Czytelnika], [ID_Pracownik], [Data_Wypozyczenia], [Dlugosc_Wypozyczenia], [Data_Oddania], [Szacowany_zwrot]) VALUES (6, 6, 2, CAST(N'2023-01-11' AS Date), 21, CAST(N'2023-01-12' AS Date), CAST(N'2023-02-01' AS Date))
GO
INSERT [dbo].[Operacje] ([ID_Ksiazki], [ID_Czytelnika], [ID_Pracownik], [Data_Wypozyczenia], [Dlugosc_Wypozyczenia], [Data_Oddania], [Szacowany_zwrot]) VALUES (6, 1, 3, CAST(N'2023-01-13' AS Date), 2, CAST(N'2023-01-14' AS Date), CAST(N'2023-01-15' AS Date))
GO
INSERT [dbo].[Operacje] ([ID_Ksiazki], [ID_Czytelnika], [ID_Pracownik], [Data_Wypozyczenia], [Dlugosc_Wypozyczenia], [Data_Oddania], [Szacowany_zwrot]) VALUES (2, 4, 2, CAST(N'2023-01-15' AS Date), 1, NULL, CAST(N'2023-01-16' AS Date))
GO
INSERT [dbo].[Operacje] ([ID_Ksiazki], [ID_Czytelnika], [ID_Pracownik], [Data_Wypozyczenia], [Dlugosc_Wypozyczenia], [Data_Oddania], [Szacowany_zwrot]) VALUES (9, 1, 2, CAST(N'2023-01-18' AS Date), 3, NULL, CAST(N'2023-01-21' AS Date))
GO
INSERT [dbo].[Autor] ([ISBN], [Imie], [Nazwisko]) VALUES (N'978-83-8191-620-2', N'Irene', N'Sola')
GO
INSERT [dbo].[Autor] ([ISBN], [Imie], [Nazwisko]) VALUES (N'978-83-965277-4-5', N'Lotta', N'Elstad')
GO
INSERT [dbo].[Autor] ([ISBN], [Imie], [Nazwisko]) VALUES (N'978-83-8049-852-5', N'Magdalena', N'Kasprzyk-Chevriaux  ')
GO
INSERT [dbo].[Autor] ([ISBN], [Imie], [Nazwisko]) VALUES (N'978-83-8049-852-5', N'Jarosław', N'Dumanowski')
GO
INSERT [dbo].[Autor] ([ISBN], [Imie], [Nazwisko]) VALUES (N'978-83-2805-380-9', N'Jeffrey', N'Hamelman')
GO
INSERT [dbo].[Autor] ([ISBN], [Imie], [Nazwisko]) VALUES (N'978-83-8169-177-2', N'Tove', N'Nilsson')
GO
