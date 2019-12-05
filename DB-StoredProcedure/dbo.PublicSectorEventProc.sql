USE [FStepPublicSector_prod]
GO

/****** Object:  StoredProcedure [dbo].[PublicSectorEventProc]    Script Date: 05/12/2019 16:43:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Daniela Dutu
-- Create date: 04/12/2019
-- Description:	Writes values into table PublicSectorEvent from the form Register for the seventh annual event
-- =============================================
CREATE PROCEDURE [dbo].[PublicSectorEventProc]
	-- Add the parameters for the stored procedure here
	   @Date date
      ,@Reference varchar(20)
      ,@Organisation varchar(200)
      ,@JobTitle varchar(200)
      ,@FullName varchar(100)
      ,@Email varchar(100)
      ,@Telephone varchar(50)
      ,@DietaryRequirements varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PublicSectorEvent (
	[Date]
      ,[Reference]
      ,[Organisation]
      ,[JobTitle]
      ,[FullName]
      ,[Email]
      ,[Telephone]
      ,[DietaryRequirements]
	  )
	  VALUES (
	   @Date
      ,@Reference
      ,@Organisation
      ,@JobTitle
      ,@FullName
      ,@Email
      ,@Telephone
      ,@DietaryRequirements
	  )
END
GO

