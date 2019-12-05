USE [FStepPublicSector_prod]
GO

/****** Object:  Table [dbo].[PublicSectorEvent]    Script Date: 05/12/2019 16:42:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PublicSectorEvent](
	[Date] [date] NOT NULL,
	[Reference] [varchar](20) NOT NULL,
	[Organisation] [varchar](200) NULL,
	[JobTitle] [varchar](200) NULL,
	[FullName] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Telephone] [varchar](50) NULL,
	[DietaryRequirements] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

