USE [master]
GO
/****** Object:  Database [authentication]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE DATABASE [authentication]
GO
ALTER DATABASE [authentication] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [authentication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [authentication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [authentication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [authentication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [authentication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [authentication] SET ARITHABORT OFF 
GO
ALTER DATABASE [authentication] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [authentication] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [authentication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [authentication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [authentication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [authentication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [authentication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [authentication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [authentication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [authentication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [authentication] SET  ENABLE_BROKER 
GO
ALTER DATABASE [authentication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [authentication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [authentication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [authentication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [authentication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [authentication] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [authentication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [authentication] SET RECOVERY FULL 
GO
ALTER DATABASE [authentication] SET  MULTI_USER 
GO
ALTER DATABASE [authentication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [authentication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [authentication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [authentication] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'authentication', N'ON'
GO
USE [authentication]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/12/2024 8:13:49 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [varchar](30) NULL,
	[CustomerId] [nvarchar](450) NULL,
	[EmployeeId] [nvarchar](450) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/12/2024 8:13:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Discount] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2e0b1424-0f3d-40e1-a0b3-adc6b5886bdc', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b83011a0-d7e0-44ae-a91d-63f804ca17f3', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ea891931-84c0-42d7-b83f-6a735a7c3e62', N'Employee', N'EMPLOYEE', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ace406a0-b33f-40e6-b715-40f0b3acd08d', N'2e0b1424-0f3d-40e1-a0b3-adc6b5886bdc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'149bcb0a-9687-4f97-a1fc-c45dd3e0cbc3', N'b83011a0-d7e0-44ae-a91d-63f804ca17f3')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'149bcb0a-9687-4f97-a1fc-c45dd3e0cbc3', N'admin@abc.com', N'ADMIN@ABC.COM', N'admin@abc.com', N'ADMIN@ABC.COM', 1, N'AQAAAAIAAYagAAAAEJToKnHFlxlhxY4r5LuKnaZ0pvCLeg5HnfgEPzPwHNbzD4VO2Jvv+TPZRsOTnuIsNA==', N'PB5DMJKM6LQRFVQSESD3SMXOOHTLKG4O', N'25f9d5f3-51b4-48e8-91cf-eb8ee3ed725c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ace406a0-b33f-40e6-b715-40f0b3acd08d', N'c@abc.com', N'C@ABC.COM', N'c@abc.com', N'C@ABC.COM', 1, N'AQAAAAIAAYagAAAAEIceLlWGvTJ25VzI6kMVcM2foH4iDPF3seg4ZawqDSDwoMvzXo0Ynj/6pxkS3kqueg==', N'HIFCHG53ERXXBHFRHSLI6UBSSQRWKXKT', N'd93e2895-2357-47fe-b9cf-93c82c2e76d8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b4652b8e-c07f-4877-a571-09e5bfba8b87', N'b@abc.com', N'B@ABC.COM', N'b@abc.com', N'B@ABC.COM', 0, N'AQAAAAIAAYagAAAAEGfsLV648IbZz43Iyb0FC17FD4FDy+WrWkd6/uQ03b0SzodBog4D/sZWtD/Nj9S3FA==', N'NVYPNN5KHV3HUKOOPFLVSLF6TAGGYBBG', N'aee91e9f-a820-4357-8e02-70693e681328', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b9bcf4ac-723e-4f3f-b826-f56a1e406d84', N'a@abc.com', N'A@ABC.COM', N'a@abc.com', N'A@ABC.COM', 1, N'AQAAAAIAAYagAAAAEKXtHtM0r5aEJdNuGSk6H6s1/1pC7/YhEVic9FgaxrBGM+m+UQlYFXGLr5m3XMTS2w==', N'OCOGYTRAGICS2KG6736N2HBTFHP2EALP', N'198e0bd3-9ece-4379-ab3d-59f2d256a0f8', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Fiction')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Non-Fiction')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Science')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (1, N'The Great Gatsby', 10.99, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (2, N'To Kill a Mockingbird', 7.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (3, N'1984', 8.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (4, N'The Catcher in the Rye', 6.99, 0, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (5, N'Moby Dick', 15.99, 0.15, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (6, N'War and Peace', 12.99, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (7, N'Pride and Prejudice', 9.99, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (8, N'The Hobbit', 8.99, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (9, N'The Road', 7.99, 0, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (10, N'Brave New World', 9.99, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (11, N'The Alchemist', 6.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (12, N'Anna Karenina', 14.99, 0.15, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (13, N'The Brothers Karamazov', 13.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (14, N'Madame Bovary', 11.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (15, N'The Iliad', 10.99, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (16, N'The Odyssey', 12.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (17, N'Don Quixote', 9.99, 0.1, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (18, N'Crime and Punishment', 11.99, 0, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (19, N'Frankenstein', 8.99, 0.15, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (20, N'The Grapes of Wrath', 10.99, 0.05, 1)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (21, N'Jane Eyre', 9.99, 0.05, 1)

INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (22, N'Sapiens: A Brief History of Humankind', 10.99, 0.1, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (23, N'Educated', 12.99, 0.05,2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (24, N'Becoming', 9.99, 0.1, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (25, N'Atomic Habits', 11.99, 0, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (26, N'The Subtle Art of Not Giving a F*ck', 8.99, 0.15, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (27, N'Factfulness Ten Reasons We are Wrong About the World', 10.99, 0.05, 2)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (28, N'The Power of Habit', 9.99, 0.05, 2)

INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (29, N'Cosmos', 10.99, 0.1, 3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (30, N'A Brief History of Time', 12.99, 0.05,3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (31, N'The Selfish Gene', 9.99, 0.1, 3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (32, N'The Elegant Universe:', 11.99, 0, 3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (33, N'The Structure of Scientific Revolutions', 8.99, 0.15, 3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (34, N'The Emperor of All Maladies:', 10.99, 0.05, 3)
INSERT [dbo].[Product] ([Id], [Description], [Price], [Discount], [CategoryId]) VALUES (35, N'Gödel, Escher, Bach: An Eternal Golden Braid', 9.99, 0.05, 3)

SET IDENTITY_INSERT [dbo].[Product] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/12/2024 8:13:49 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
USE [master]
GO
ALTER DATABASE [authentication] SET  READ_WRITE 
GO
