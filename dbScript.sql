USE [master]
GO
/****** Object:  Database [EmployeeDb_database]    Script Date: 5/2/2023 7:47:11 PM ******/
CREATE DATABASE [EmployeeDb_database]
GO
ALTER DATABASE [EmployeeDb_database] SET QUERY_STORE = OFF
GO
USE [EmployeeDb_database]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/2/2023 7:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/2/2023 7:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[JoinDate] [datetime2](7) NULL,
	[Designation] [nvarchar](100) NULL,
	[Salary] [decimal](18, 2) NULL,
	[IsBonusAdded] [bit] NULL,
	[ManagerId] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 5/2/2023 7:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerId] [int] IDENTITY(1,1) NOT NULL,
	[ManagerName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230502082714_created Database', N'6.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230502100447_created class manager', N'6.0.16')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (1, N'John', CAST(N'2010-01-01T00:00:00.0000000' AS DateTime2), N'General Manager', CAST(500000.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (2, N'Ron', CAST(N'2011-02-02T00:00:00.0000000' AS DateTime2), N'Manager', CAST(500000.00 AS Decimal(18, 2)), 1, 1)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (3, N'Doe', CAST(N'2009-04-04T00:00:00.0000000' AS DateTime2), N'Director', CAST(700000.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (4, N'Nicolas', CAST(N'2012-05-05T00:00:00.0000000' AS DateTime2), N'CTO', CAST(600000.00 AS Decimal(18, 2)), 0, NULL)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (5, N'Huma', CAST(N'2011-05-05T00:00:00.0000000' AS DateTime2), N'HR Director', CAST(80000.00 AS Decimal(18, 2)), 1, 3)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (6, N'Joya', CAST(N'2011-07-10T00:00:00.0000000' AS DateTime2), N'HR Executive', CAST(30000.00 AS Decimal(18, 2)), 1, 5)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (7, N'Jason', CAST(N'2013-02-10T00:00:00.0000000' AS DateTime2), N'HR Executive', CAST(30000.00 AS Decimal(18, 2)), 0, 5)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (8, N'Josh', CAST(N'2012-01-10T00:00:00.0000000' AS DateTime2), N'Team Lead', CAST(40000.00 AS Decimal(18, 2)), 1, 4)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (9, N'Stardum', CAST(N'2010-01-02T00:00:00.0000000' AS DateTime2), N'Team Lead', CAST(40000.00 AS Decimal(18, 2)), 1, 4)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (10, N'Umaer', CAST(N'2010-02-01T00:00:00.0000000' AS DateTime2), N'Senior Software Engineer', CAST(30000.00 AS Decimal(18, 2)), 1, 6)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (11, N'Uzair', CAST(N'2010-01-03T00:00:00.0000000' AS DateTime2), N'Senior Software Egineer', CAST(30000.00 AS Decimal(18, 2)), 0, 6)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (12, N'Kate', CAST(N'2010-01-10T00:00:00.0000000' AS DateTime2), N'Engineer', CAST(20000.00 AS Decimal(18, 2)), 1, 7)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (13, N'Harish', CAST(N'2010-10-10T00:00:00.0000000' AS DateTime2), N'Engineer', CAST(20000.00 AS Decimal(18, 2)), 1, 7)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (14, N'Jack', CAST(N'2014-10-10T00:00:00.0000000' AS DateTime2), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 0, 2)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (15, N'Jane', CAST(N'2009-10-10T00:00:00.0000000' AS DateTime2), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 1, 2)
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded], [ManagerId]) VALUES (16, N'Hun', CAST(N'2009-10-10T00:00:00.0000000' AS DateTime2), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 1, 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([ManagerId], [ManagerName]) VALUES (1, N'Jhon')
INSERT [dbo].[Manager] ([ManagerId], [ManagerName]) VALUES (2, N'Ron')
INSERT [dbo].[Manager] ([ManagerId], [ManagerName]) VALUES (3, N'Doe')
INSERT [dbo].[Manager] ([ManagerId], [ManagerName]) VALUES (4, N'Nicolas')
INSERT [dbo].[Manager] ([ManagerId], [ManagerName]) VALUES (5, N'Huma')
INSERT [dbo].[Manager] ([ManagerId], [ManagerName]) VALUES (6, N'Josh')
INSERT [dbo].[Manager] ([ManagerId], [ManagerName]) VALUES (7, N'Stardum')
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO
/****** Object:  Index [IX_Employee_ManagerId]    Script Date: 5/2/2023 7:47:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_ManagerId] ON [dbo].[Employee]
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Manager_ManagerId] FOREIGN KEY([ManagerId])
REFERENCES [dbo].[Manager] ([ManagerId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Manager_ManagerId]
GO
USE [master]
GO
ALTER DATABASE [EmployeeDb_database] SET  READ_WRITE 
GO
