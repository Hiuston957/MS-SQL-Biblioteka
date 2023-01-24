USE [Biblioteka]
GO

/****** Object:  Trigger [dbo].[Szacowany_Zwrot]    Script Date: 23/01/2023 21:07:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE TRIGGER [dbo].[Szacowany_Zwrot] ON [dbo].[Operacje]
AFTER INSERT, UPDATE
AS 
BEGIN



UPDATE Operacje
SET 
Szacowany_zwrot =  DATEADD(DAY,Dlugosc_Wypozyczenia,Data_Wypozyczenia)




END
GO

ALTER TABLE [dbo].[Operacje] ENABLE TRIGGER [Szacowany_Zwrot]
GO


