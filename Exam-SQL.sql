CREATE DATABASE EmployeeDb_database
GO
USE EmployeeDb_database
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 20/07/2017 12:22:55 PM ******/
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20/07/2017 12:22:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[JoinDate] [datetime] NULL,
	[Designation] [varchar](100) NULL,
	[Salary] [decimal](18, 2) NULL,
	[IsBonusAdded] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (1, N'John', CAST(N'2010-01-01 00:00:00.000' AS DateTime), N'General Manager', CAST(500000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (2, N'Ron', CAST(N'2011-02-02 00:00:00.000' AS DateTime), N'Manager', CAST(500000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (3, N'Doe', CAST(N'2009-04-04 00:00:00.000' AS DateTime), N'Director', CAST(700000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (4, N'Nicolas', CAST(N'2012-05-05 00:00:00.000' AS DateTime), N'CTO', CAST(600000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (5, N'Huma', CAST(N'2011-05-05 00:00:00.000' AS DateTime), N'HR Director', CAST(80000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (6, N'Joya', CAST(N'2011-07-10 00:00:00.000' AS DateTime), N'HR Executive', CAST(30000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (7, N'Jason', CAST(N'2013-02-10 00:00:00.000' AS DateTime), N'HR Executive', CAST(30000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (8, N'Josh', CAST(N'2012-01-10 00:00:00.000' AS DateTime), N'Team Lead', CAST(40000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (9, N'Stardum', CAST(N'2010-01-02 00:00:00.000' AS DateTime), N'Team Lead', CAST(40000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (10, N'Umaer', CAST(N'2010-02-01 00:00:00.000' AS DateTime), N'Senior Software Engineer', CAST(30000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (11, N'Uzair', CAST(N'2010-01-03 00:00:00.000' AS DateTime), N'Senior Software Egineer', CAST(30000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (12, N'Kate', CAST(N'2010-01-10 00:00:00.000' AS DateTime), N'Engineer', CAST(20000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (13, N'Harish', CAST(N'2010-10-10 00:00:00.000' AS DateTime), N'Engineer', CAST(20000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (14, N'Jack', CAST(N'2014-10-10 00:00:00.000' AS DateTime), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (15, N'Jane', CAST(N'2009-10-10 00:00:00.000' AS DateTime), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (16, N'Hun', CAST(N'2009-10-10 00:00:00.000' AS DateTime), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
