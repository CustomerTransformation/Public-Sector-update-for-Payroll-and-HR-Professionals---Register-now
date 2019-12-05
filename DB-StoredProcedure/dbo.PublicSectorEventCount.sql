USE [FStepPublicSector_prod]
GO

/****** Object:  StoredProcedure [dbo].[PublicSectorEventCount]    Script Date: 05/12/2019 16:43:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Daniela Dutu
-- Create date: 04/12/2019
-- Description:	Counts recors in the table PublicSectorEvent
-- =============================================
CREATE PROCEDURE [dbo].[PublicSectorEventCount]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @numberRecords int
	set @numberRecords =  (SELECT Count(*) FROM PublicSectorEvent)
	SELECT @numberRecords as numberRecords

	
END
GO

