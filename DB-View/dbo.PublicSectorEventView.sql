USE [FStepPublicSector_prod]
GO

/****** Object:  View [dbo].[PublicSectorEventView]    Script Date: 05/12/2019 16:42:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[PublicSectorEventView]
AS
SELECT     CONVERT(VARCHAR(20), Date, 103) as Date,
Reference,
Organisation,
JobTitle,
FullName,
Email,
Telephone,
DietaryRequirements
FROM            dbo.PublicSectorEvent
GO

