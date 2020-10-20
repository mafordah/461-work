USE [Esports]
GO

/****** Object:  StoredProcedure [dbo].[insertPerson]    Script Date: 10/19/2020 11:53:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertPerson]
	-- Add the parameters for the stored procedure here
	@firstName as varchar(50),
	@lastname as varchar(50),
	@gamerTag as varchar(50),
	@email as varchar(50),
	@PWD as varbinary(50),
	@phone as varchar(50),
	@addressID as int,
	@gameID as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[People]
           ([firstName]
           ,[lastName]
           ,[gamerTag]
           ,[email]
           ,[PWD]
           ,[phone]
           ,[addressID]
           ,[gameID])
     VALUES
           (@firstName,
           @lastName,
           @gamerTag,
           @email,
           @PWD,
           @phone,
           @addressID,
           @gameID)
END
GO

