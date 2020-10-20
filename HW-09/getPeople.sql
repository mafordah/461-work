USE [Esports]
GO

/****** Object:  StoredProcedure [dbo].[getPeople]    Script Date: 10/19/2020 11:53:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getPeople]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [personalID]
      ,[firstName]
      ,[lastName]
      ,[gamerTag]
      ,[email]
      ,[PWD]
      ,[phone]
      ,[addressID]
      ,[gameID]
  FROM [dbo].[People]

END
GO

