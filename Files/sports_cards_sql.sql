USE [master]
GO
/****** Object:  Database [Sports Card Database]    Script Date: 6/5/2018 11:35:19 AM ******/
CREATE DATABASE [Sports Card Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sports Card Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Sports Card Database.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sports Card Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Sports Card Database_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Sports Card Database] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sports Card Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sports Card Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sports Card Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sports Card Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sports Card Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sports Card Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sports Card Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sports Card Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sports Card Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sports Card Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sports Card Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sports Card Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sports Card Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sports Card Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sports Card Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sports Card Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sports Card Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sports Card Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sports Card Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sports Card Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sports Card Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sports Card Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sports Card Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sports Card Database] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sports Card Database] SET  MULTI_USER 
GO
ALTER DATABASE [Sports Card Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sports Card Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sports Card Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sports Card Database] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Sports Card Database] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Sports Card Database]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[Collection] [varchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[PlayerId] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[QualityID] [int] NOT NULL,
	[ValueID] [int] NOT NULL,
	[SportID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
	[Year] [nvarchar](50) NOT NULL,
	[CurrentWorth] [smallmoney] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CardNumber] [int] NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Player]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Player](
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Suffix] [varchar](50) NULL,
	[Birthdate] [date] NOT NULL,
	[HomeTown] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Position]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[Position] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quality]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quality](
	[QualityID] [int] IDENTITY(1,1) NOT NULL,
	[Quality] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Quality] PRIMARY KEY CLUSTERED 
(
	[QualityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sport]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sport](
	[SportID] [int] IDENTITY(1,1) NOT NULL,
	[Sport] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sport] PRIMARY KEY CLUSTERED 
(
	[SportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Value]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Value](
	[ValueID] [int] IDENTITY(1,1) NOT NULL,
	[ValueLevel] [varchar](50) NOT NULL,
	[ValueRange] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Value] PRIMARY KEY CLUSTERED 
(
	[ValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[MostValuableCard]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MostValuableCard]
AS
SELECT TOP (100) PERCENT dbo.Cards.PlayerId, dbo.Player.FirstName, dbo.Player.LastName, dbo.Brand.Brand, dbo.Cards.Year, dbo.Cards.CardNumber, dbo.Cards.CurrentWorth
FROM     dbo.Cards INNER JOIN
                  dbo.Player ON dbo.Cards.PlayerId = dbo.Player.PlayerID INNER JOIN
                  dbo.Brand ON dbo.Cards.BrandID = dbo.Brand.BrandID
ORDER BY dbo.Cards.CurrentWorth DESC

GO
/****** Object:  View [dbo].[PositionValueAverage]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PositionValueAverage]
AS
SELECT TOP (100) PERCENT dbo.Position.Position, AVG(dbo.Cards.CurrentWorth) AS AveValue
FROM     dbo.Cards INNER JOIN
                  dbo.Position ON dbo.Cards.PositionID = dbo.Position.PositionID
GROUP BY dbo.Position.Position
ORDER BY AveValue DESC

GO
/****** Object:  View [dbo].[SportAverageCardValue]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SportAverageCardValue]
AS
SELECT dbo.Sport.Sport, AVG(dbo.Cards.CurrentWorth) AS AveValue
FROM     dbo.Cards INNER JOIN
                  dbo.Sport ON dbo.Cards.SportID = dbo.Sport.SportID
GROUP BY dbo.Sport.Sport

GO
/****** Object:  View [dbo].[SportValue]    Script Date: 6/5/2018 11:35:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SportValue]
AS
SELECT dbo.Sport.Sport, SUM(dbo.Cards.CurrentWorth) AS TotalValue
FROM     dbo.Cards INNER JOIN
                  dbo.Sport ON dbo.Cards.SportID = dbo.Sport.SportID
GROUP BY dbo.Sport.Sport

GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [Brand], [Collection]) VALUES (1, N'Topps', NULL)
INSERT [dbo].[Brand] ([BrandID], [Brand], [Collection]) VALUES (2, N'Upper Deck', NULL)
INSERT [dbo].[Brand] ([BrandID], [Brand], [Collection]) VALUES (3, N'Fleer', NULL)
INSERT [dbo].[Brand] ([BrandID], [Brand], [Collection]) VALUES (4, N'Score', NULL)
INSERT [dbo].[Brand] ([BrandID], [Brand], [Collection]) VALUES (5, N'Donruss', NULL)
INSERT [dbo].[Brand] ([BrandID], [Brand], [Collection]) VALUES (9, N'Hoops', NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Cards] ON 

INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (2, 1, 1, 3, 1, 2, 22, N'1991', 0.3500, 1, 287)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (3, 2, 1, 3, 2, 2, 19, N'1991', 0.5500, 1, 81)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (4, 3, 1, 3, 2, 2, 12, N'1991', 0.8000, 1, 73)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (5, 4, 1, 3, 1, 2, 13, N'1991', 0.3500, 1, 99)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (6, 5, 1, 3, 1, 2, 19, N'1991', 0.4300, 1, 368)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (7, 6, 1, 3, 2, 2, 12, N'1991', 0.5500, 1, 371)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (8, 7, 1, 3, 2, 2, 13, N'1991', 1.8000, 1, 360)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (9, 8, 1, 3, 1, 2, 26, N'1991', 0.4300, 1, 582)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (10, 9, 1, 3, 1, 2, 19, N'1991', 0.4300, 1, 563)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (13, 10, 1, 3, 1, 2, 25, N'1991', 0.4300, 1, 427)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (14, 11, 2, 2, 1, 3, 32, N'1993', 0.4300, 1, 475)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (15, 12, 2, 2, 1, 3, 29, N'1993', 0.4800, 1, 295)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (16, 13, 2, 2, 2, 3, 33, N'1991', 0.5500, 1, 92)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (17, 14, 9, 2, 2, 3, 32, N'1990', 0.5500, 1, 374)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (18, 15, 3, 2, 2, 3, 30, N'1991', 1.7500, 1, 220)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (19, 15, 3, 2, 2, 3, 30, N'1991', 1.7500, 1, 211)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (20, 16, 2, 2, 2, 3, 30, N'1991', 0.5500, 1, 98)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (21, 18, 2, 2, 2, 3, 31, N'1991', 2.5000, 1, 344)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (22, 17, 9, 3, 1, 3, 30, N'1990', 0.4300, 1, 365)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (23, 19, 9, 2, 2, 3, 29, N'1991', 0.5500, 1, 101)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (24, 20, 4, 2, 2, 1, 5, N'1991', 1.2500, 1, 876)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (25, 21, 5, 2, 2, 1, 7, N'1991', 0.8000, 1, 359)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (26, 22, 2, 2, 2, 1, 3, N'1990', 0.7500, 1, 254)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (27, 8, 2, 2, 2, 1, 6, N'1990', 2.2500, 1, 13)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (28, 20, 4, 2, 2, 1, 5, N'1991', 1.2500, 1, 668)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (29, 23, 5, 4, 2, 1, 6, N'1991', 0.7500, 1, 77)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (31, 23, 2, 2, 2, 1, 6, N'1992', 1.2500, 1, 650)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (32, 23, 3, 1, 2, 1, 6, N'1992', 4.2500, 1, 23)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (33, 20, 3, 1, 3, 1, 5, N'1992', 9.6000, 1, 3)
INSERT [dbo].[Cards] ([CardID], [PlayerId], [BrandID], [QualityID], [ValueID], [SportID], [PositionID], [Year], [CurrentWorth], [Quantity], [CardNumber]) VALUES (34, 24, 3, 1, 2, 1, 1, N'1992', 2.0000, 1, 11)
SET IDENTITY_INSERT [dbo].[Cards] OFF
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (1, N'Cortez', N'Kennedy', NULL, NULL, CAST(N'1968-08-23' AS Date), N'Wilson', N'Arkansas', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (2, N'Jerry', N'Rice', NULL, NULL, CAST(N'1962-10-13' AS Date), N'Starkville', N'Mississippi', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (3, N'Joe', N'Montana', NULL, NULL, CAST(N'1956-06-11' AS Date), N'New Eagle', N'Pennsylvania', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (4, N'Bo', N'Jackson', NULL, NULL, CAST(N'1962-11-30' AS Date), N'Bessemer', N'Alabama', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (5, N'Michael', N'Irvin', NULL, NULL, CAST(N'1966-03-05' AS Date), N'Fort Lauderdale', N'Florida', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (6, N'Troy', N'Aikman', NULL, NULL, CAST(N'1966-11-21' AS Date), N'Henryetta', N'Oklahoma', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (7, N'Emmitt', N'Smith', NULL, NULL, CAST(N'1969-05-15' AS Date), N'Pensacola', N'Florida', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (8, N'Deion', N'Sanders', NULL, NULL, CAST(N'1967-08-09' AS Date), N'Alpharetta', N'Georgia', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (9, N'Shannon', N'Sharpe', NULL, NULL, CAST(N'1968-06-26' AS Date), N'Glennville', N'Georgia', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (10, N'Junior', N'Seau', NULL, NULL, CAST(N'1969-01-19' AS Date), N'Oceanside', N'California', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (11, N'Shawn', N'Kemp', NULL, NULL, CAST(N'1969-11-26' AS Date), N'Elkhart', N'Indiana', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (12, N'Gary', N'Payton', NULL, NULL, CAST(N'1968-07-23' AS Date), N'Oakland', N'California', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (13, N'Hakeem', N'Olajuwon', NULL, NULL, CAST(N'1963-01-21' AS Date), N'Lagos', N'Lagos', N'Nigeria')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (14, N'Charles', N'Barkley', N'Wade', NULL, CAST(N'1963-02-20' AS Date), N'Leeds', N'Alabama', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (15, N'Michael', N'Jordan', N'Jeffrey', NULL, CAST(N'1963-02-17' AS Date), N'Brooklyn', N'New York', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (16, N'Clyde', N'Drexler', N'Austin', NULL, CAST(N'1962-06-22' AS Date), N'New Orleans', N'Louisiana', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (17, N'Reggie', N'Miller', N'Wayne', NULL, CAST(N'1965-08-24' AS Date), N'Riverside', N'California', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (18, N'Larry', N'Bird', N'Joe', NULL, CAST(N'1956-12-07' AS Date), N'West Baden Springs', N'Indiana', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (19, N'Magic', N'Johnson', NULL, N'Jr.', CAST(N'1959-08-14' AS Date), N'Lansing', N'Michigan', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (20, N'Barry', N'Bonds', N'Lamar', NULL, CAST(N'1964-07-24' AS Date), N'Riverside', N'California', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (21, N'Larry', N'Walker', N'Kenneth Robert', NULL, CAST(N'1966-12-01' AS Date), N'Maple Ridge', N'British Columbia', N'Canada')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (22, N'Paul', N'Molitor', NULL, NULL, CAST(N'1956-08-22' AS Date), N'St. Paul', N'Minnesota', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (23, N'George', N'Griffey', N'Kenneth', N'Jr.', CAST(N'1969-11-21' AS Date), N'Donora', N'Pennsylvania', N'USA')
INSERT [dbo].[Player] ([PlayerID], [FirstName], [LastName], [MiddleName], [Suffix], [Birthdate], [HomeTown], [State], [Country]) VALUES (24, N'Frank', N'Thomas', N'Edward', N'Jr.', CAST(N'1968-05-27' AS Date), N'Columbus', N'Georgia', N'USA')
SET IDENTITY_INSERT [dbo].[Player] OFF
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (1, N'1B')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (2, N'2B')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (3, N'3B')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (4, N'SS')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (5, N'LF')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (6, N'CF')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (7, N'RF')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (8, N'C')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (9, N'SP')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (10, N'RP')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (11, N'CL')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (12, N'QB')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (13, N'RB')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (14, N'FB')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (15, N'TE')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (16, N'OLT')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (17, N'OLG')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (18, N'OLC')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (19, N'WR')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (20, N'K')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (21, N'P')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (22, N'DL')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (23, N'DE')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (24, N'OLB')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (25, N'ILB')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (26, N'DBC')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (27, N'DBFS')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (28, N'DBSS')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (29, N'Point Guard')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (30, N'Shooting Guard')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (31, N'Small Forward')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (32, N'Power Forward')
INSERT [dbo].[Position] ([PositionID], [Position]) VALUES (33, N'Center')
SET IDENTITY_INSERT [dbo].[Position] OFF
SET IDENTITY_INSERT [dbo].[Quality] ON 

INSERT [dbo].[Quality] ([QualityID], [Quality]) VALUES (1, N'Mint')
INSERT [dbo].[Quality] ([QualityID], [Quality]) VALUES (2, N'Very Good')
INSERT [dbo].[Quality] ([QualityID], [Quality]) VALUES (3, N'Good')
INSERT [dbo].[Quality] ([QualityID], [Quality]) VALUES (4, N'Poor')
INSERT [dbo].[Quality] ([QualityID], [Quality]) VALUES (5, N'Very Poor')
SET IDENTITY_INSERT [dbo].[Quality] OFF
SET IDENTITY_INSERT [dbo].[Sport] ON 

INSERT [dbo].[Sport] ([SportID], [Sport]) VALUES (1, N'Baseball')
INSERT [dbo].[Sport] ([SportID], [Sport]) VALUES (2, N'Football')
INSERT [dbo].[Sport] ([SportID], [Sport]) VALUES (3, N'Basketball')
SET IDENTITY_INSERT [dbo].[Sport] OFF
SET IDENTITY_INSERT [dbo].[Value] ON 

INSERT [dbo].[Value] ([ValueID], [ValueLevel], [ValueRange]) VALUES (1, N'Low', N'< .50')
INSERT [dbo].[Value] ([ValueID], [ValueLevel], [ValueRange]) VALUES (2, N'Medium', N'> .50 < 5.00')
INSERT [dbo].[Value] ([ValueID], [ValueLevel], [ValueRange]) VALUES (3, N'High', N'> 5.00 < 15.00')
INSERT [dbo].[Value] ([ValueID], [ValueLevel], [ValueRange]) VALUES (4, N'Rare', N'< 15.00 ')
SET IDENTITY_INSERT [dbo].[Value] OFF
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Brand]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Player] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([PlayerID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Player]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Position]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Quality] FOREIGN KEY([QualityID])
REFERENCES [dbo].[Quality] ([QualityID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Quality]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Sport] FOREIGN KEY([SportID])
REFERENCES [dbo].[Sport] ([SportID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Sport]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Value] FOREIGN KEY([ValueID])
REFERENCES [dbo].[Value] ([ValueID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Value]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[13] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cards"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Player"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 170
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Brand"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 148
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MostValuableCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'MostValuableCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cards"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Position"
            Begin Extent = 
               Top = 7
               Left = 306
               Bottom = 126
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PositionValueAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'PositionValueAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cards"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sport"
            Begin Extent = 
               Top = 7
               Left = 306
               Bottom = 126
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SportAverageCardValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SportAverageCardValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[3] 4[25] 2[53] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cards"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 258
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sport"
            Begin Extent = 
               Top = 7
               Left = 306
               Bottom = 126
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SportValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SportValue'
GO
USE [master]
GO
ALTER DATABASE [Sports Card Database] SET  READ_WRITE 
GO
