USE [Esports]
GO

/****** Object:  Table [dbo].[Addresses]    Script Date: 9/29/2020 12:41:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Addresses](
	[addressID] [int] IDENTITY(1,1) NOT NULL,
	[address1] [varchar](250) NULL,
	[address2] [varchar](250) NULL,
	[city] [varchar](250) NULL,
	[stateID] [int] NULL,
	[zipCode] [varchar](14) NULL
) ON [PRIMARY]
GO

USE [Esports]
GO

/****** Object:  Table [dbo].[Games]    Script Date: 9/29/2020 12:41:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Games](
	[gameID] [int] NULL,
	[gameName] [varchar](250) NULL
) ON [PRIMARY]
GO

USE [Esports]
GO

/****** Object:  Table [dbo].[People]    Script Date: 9/29/2020 12:43:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[People](
	[personalID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[gamerTag] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[PWD] [varbinary](50) NULL,
	[phone] [varchar](50) NULL,
	[addressID] [int] NULL,
	[gameID] [varchar](50) NULL,
 CONSTRAINT [PK_playerTable] PRIMARY KEY CLUSTERED 
(
	[personalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [Esports]
GO

/****** Object:  Table [dbo].[States]    Script Date: 9/29/2020 12:43:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[States](
	[stateID] [int] IDENTITY(1,1) NOT NULL,
	[stateName] [varchar](50) NULL,
	[stateAbbreviation] [varchar](2) NULL
) ON [PRIMARY]
GO


