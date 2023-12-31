USE [master]
GO
/****** Object:  Database [WebBanHangOnline]    Script Date: 11/28/2023 10:56:02 PM ******/
CREATE DATABASE [WebBanHangOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanHangOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\WebBanHangOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanHangOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\WebBanHangOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebBanHangOnline] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanHangOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanHangOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBanHangOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanHangOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanHangOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanHangOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanHangOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanHangOnline] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanHangOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanHangOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanHangOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanHangOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBanHangOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBanHangOnline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebBanHangOnline] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebBanHangOnline] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebBanHangOnline]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[ProductCode] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](250) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PriceSale] [decimal](18, 2) NULL,
	[Quantity] [int] NOT NULL,
	[IsHome] [bit] NOT NULL,
	[IsSale] [bit] NOT NULL,
	[IsFeature] [bit] NOT NULL,
	[IsHot] [bit] NOT NULL,
	[ProductCategoryId] [int] NOT NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](500) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Modifiedby] [nvarchar](max) NULL,
	[Alias] [nvarchar](250) NULL,
	[IsActive] [bit] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.tb_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[products]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[products]
AS
SELECT ID, Title, Price,ProductCategoryId,Quantity,PriceSale
FROM tb_Product
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[datecreate] [nvarchar](25) NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](150) NULL,
	[SeoDescription] [nvarchar](250) NULL,
	[SeoKeywords] [nvarchar](150) NULL,
	[Position] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Modifiedby] [nvarchar](max) NULL,
	[Alias] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Contact]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[Website] [nvarchar](max) NULL,
	[Message] [nvarchar](4000) NULL,
	[IsRead] [bit] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Modifiedby] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_News]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeywords] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Modifiedby] [nvarchar](max) NULL,
	[Alias] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tb_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Modifiedby] [nvarchar](max) NULL,
	[TypePayment] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetail]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tb_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Icon] [nvarchar](250) NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[SeoDescription] [nvarchar](500) NULL,
	[SeoKeywords] [nvarchar](250) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[Modifiedby] [nvarchar](max) NULL,
	[Alias] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_dbo.tb_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductImage]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.tb_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Subscribe]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Subscribe](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.tb_Subscribe] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_SystemSetting]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SystemSetting](
	[SettingKey] [nvarchar](50) NOT NULL,
	[SettingValue] [nvarchar](4000) NULL,
	[SettingDescription] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.tb_SystemSetting] PRIMARY KEY CLUSTERED 
(
	[SettingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'1', N'1', N'1', NULL, 1)
INSERT [dbo].[account] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'admin', N'123', N'Lê Chí Huân', N'2022-08-21 20:16:04.51000', 0)
INSERT [dbo].[account] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'admin2', N'1', N'tuan', NULL, 1)
INSERT [dbo].[account] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'staff', N'123', N'Mai Nguyễn Phước Yến', N'2022-08-21 20:16:36.94700', 1)
INSERT [dbo].[account] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'staff2', N'1234', N'tuan', N'12/1/2002', 1)
INSERT [dbo].[account] ([username], [password], [fullname], [datecreate], [isAdmin]) VALUES (N'staff22', N'12345', N'tâ', NULL, 0)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2ce3f156-c6d0-4ff1-9013-f534b0cc2923', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7cd9d492-75bb-4213-9f1a-8e257ed1576e', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a1c6e6f6-41d4-4cbf-a2c9-aa1523fa1a4f', N'Customer')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1ff7e20c-a02b-4bfd-af48-111eeffd4b19', N'2ce3f156-c6d0-4ff1-9013-f534b0cc2923')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'39747092-de74-400b-942e-d4c348ec4a54', N'7cd9d492-75bb-4213-9f1a-8e257ed1576e')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Phone], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'1ff7e20c-a02b-4bfd-af48-111eeffd4b19', N'Đoàn Xuân Tuấn', N'0766547511', N'xuantuanbvb@gmail.con', 0, N'AGYIcFUwoLcJWoaApklXbUAOod6eWkRp+rAtKG+y8347ZjLuhFOnCXsloKa1O4Xueg==', N'1d363061-f662-4151-a2b5-b0c4af981c26', NULL, 0, 0, NULL, 1, 0, N'xuantuan', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Phone], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'39747092-de74-400b-942e-d4c348ec4a54', N'Đoàn Xuân Tuấn', N'0766547511', N'12@gmail.com', 0, N'AP6wiRBme4xF+JPq//S+JH9/IHsDcEhlI/LN6y/pMMLh0B+Dey6VIVnB2GOJuZstiw==', N'b69d34d8-0623-4bc7-ad75-b103cafe1a80', NULL, 0, 0, NULL, 1, 0, N'dxt', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Phone], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'539e5e31-a25c-4754-a4a2-22f14967909c', NULL, NULL, N'tuan@gmail.com', 0, N'AO8lTdO4Qu0Czy++nHbzBhSia+dmK3EKMW8sGKmFHxySsqkNULZ/dKjZR8XEHYio/Q==', N'37a0280f-a7c8-47d0-8af6-df307e93d975', NULL, 0, 0, NULL, 1, 0, N'tuan@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [Phone], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [isAdmin]) VALUES (N'fdd2411e-b93f-4ea1-a01c-6fd5079ce218', NULL, NULL, N'123@gmail.com', 0, N'AGcInacKeiJcbXkf3icfTszsnMYZOJtvb0DcMfbx8D7GU54Xd5n1FiZudiOKvfZRJQ==', N'11885a4d-0b97-428e-8845-02f85dd6fb01', NULL, 0, 0, NULL, 1, 0, N'123@gmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[tb_Category] ON 

INSERT [dbo].[tb_Category] ([Id], [Title], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [Link]) VALUES (2, N'Trang chủ', NULL, N'Home', NULL, NULL, 1, NULL, CAST(N'2022-05-22T15:34:08.090' AS DateTime), CAST(N'2022-05-22T15:53:12.530' AS DateTime), NULL, N'trang-chu', 0, NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [Link]) VALUES (3, N'Giới thiệu', NULL, N'Giới thiệu', NULL, NULL, 2, NULL, CAST(N'2022-05-22T15:41:55.960' AS DateTime), CAST(N'2022-05-22T15:53:40.723' AS DateTime), NULL, N'gioi-thieu', 0, NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [Link]) VALUES (6, N'Tin tức', N'Tin tức', N'Tin tức', NULL, NULL, 3, NULL, CAST(N'2022-05-26T07:33:27.233' AS DateTime), CAST(N'2022-05-26T07:33:27.233' AS DateTime), NULL, N'tin-tuc', 0, NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [Link]) VALUES (7, N'Khuyến mãi', NULL, NULL, NULL, NULL, 6, NULL, CAST(N'2022-06-15T08:32:28.293' AS DateTime), CAST(N'2023-11-28T21:44:44.297' AS DateTime), NULL, N'khuyen-mai', 0, N'post/khuyen-mai')
INSERT [dbo].[tb_Category] ([Id], [Title], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [Link]) VALUES (8, N'Liên hệ', NULL, NULL, NULL, NULL, 5, NULL, CAST(N'2022-06-15T08:32:48.597' AS DateTime), CAST(N'2022-06-15T08:32:48.597' AS DateTime), NULL, N'lien-he', 0, NULL)
INSERT [dbo].[tb_Category] ([Id], [Title], [Description], [SeoTitle], [SeoDescription], [SeoKeywords], [Position], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [Link]) VALUES (9, N'Sản phẩm', NULL, NULL, NULL, NULL, 3, NULL, CAST(N'2022-06-17T06:37:56.453' AS DateTime), CAST(N'2022-06-17T06:37:56.453' AS DateTime), NULL, N'san-pham', 0, NULL)
SET IDENTITY_INSERT [dbo].[tb_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_News] ON 

INSERT [dbo].[tb_News] ([Id], [Title], [Description], [Detail], [Image], [CategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive]) VALUES (11, N'Thứ trưởng Bộ Y tế: ''Chưa có đủ cơ sở để bắt buộc tiêm vắc xin COVID-19 với trẻ em''', N'Bộ Y tế đang làm việc với Bộ Tư pháp và các đơn vị, lấy ý kiến chuyên gia trong và ngoài nước về vấn đề tiêm vắc- xin COVID-19 là tự nguyện hay bắt buộc.', N'<p>Chiều 4/6, trả lời c&acirc;u hỏi tại họp b&aacute;o Ch&iacute;nh phủ, Thứ trưởng Bộ Y tế Nguyễn Thị Li&ecirc;n Hương cho biết, Bộ Y tế đ&atilde; lấy &yacute; kiến c&aacute;c th&agrave;nh vi&ecirc;n Ban Chỉ đạo quốc gia ph&ograve;ng chống COVID-19 v&agrave; tr&igrave;nh Thủ tướng đề xuất sửa đổi nguy&ecirc;n tắc &ldquo;5K&rdquo; th&agrave;nh &ldquo;V2K&rdquo; (vắc xin, khẩu trang, khử khuẩn). Trường hợp c&oacute; biến chủng vi r&uacute;t mới nguy hiểm hơn, ảnh hưởng đến sức khỏe người d&acirc;n, đời sống x&atilde; hội th&igrave; sẽ &aacute;p dụng nguy&ecirc;n tắc &ldquo;5K&rdquo;.</p>

<p>Theo b&agrave; Hương, nguy&ecirc;n tắc 5K (khẩu trang, khử khuẩn, khoảng c&aacute;ch, kh&ocirc;ng tập trung, khai b&aacute;o y tế) được Bộ Y tế n&ecirc;u ra từ th&aacute;ng 8/2020. Đ&oacute; l&agrave; khi Việt Nam trong đợt b&ugrave;ng ph&aacute;t dịch bệnh thứ hai. Sau khi Việt Nam cơ bản phủ đủ liều&nbsp;<a class="TextlinkBaiviet" href="https://www.24h.com.vn/vac-xin-covid-19-c46e6432.html" style="text-decoration-line: none; line-height: 1.6; color: rgb(0, 0, 255);" title="vắc xin">vắc xin</a>&nbsp;cho nh&oacute;m d&acirc;n số từ 12 tuổi, nhiều chuy&ecirc;n gia v&agrave; l&atilde;nh đạo địa phương đề nghị sửa nguy&ecirc;n tắc &ldquo;5K&rdquo;.</p>

<p>Thủ tướng cũng nhiều lần y&ecirc;u cầu Bộ Y tế sửa nguy&ecirc;n tắc n&agrave;y, tuy nhi&ecirc;n Bộ Y tế chưa c&oacute; văn bản điều chỉnh.</p>

<p>Thứ trưởng Bộ Y tế cũng cho rằng, việc ti&ecirc;m&nbsp;<a class="TextlinkBaiviet" href="https://www.24h.com.vn/vac-xin-covid-19-c46e6432.html" style="text-decoration-line: none; line-height: 1.6; color: rgb(0, 0, 255);" title="vắc xin COVID-19">vắc xin COVID-19</a>&nbsp;đ&uacute;ng lịch, đủ liều rất quan trọng, tuy nhi&ecirc;n, chưa c&oacute; đủ cơ sở để bắt buộc ti&ecirc;m vắc xin COVID-19 với &quot;trẻ từ 5 đến dưới 12 tuổi&quot;.</p>

<p>Theo Luật Ph&ograve;ng chống bệnh truyền nhiễm năm 2007, vắc xin, sinh phẩm y tế được sử dụng theo h&igrave;nh thức bắt buộc hoặc tự nguyện. Ch&iacute;nh v&igrave; thế, mọi người c&oacute; quyền sử dụng vắc xin, sinh phẩm y tế để bảo vệ sức khỏe cho m&igrave;nh v&agrave; cộng đồng; Nh&agrave; nước hỗ trợ v&agrave; khuyến kh&iacute;ch c&ocirc;ng d&acirc;n tự nguyện sử dụng.</p>
', N'/Uploads/images/sanpham/blog_3.jpg', 3, NULL, NULL, NULL, NULL, CAST(N'2022-06-05T07:04:24.000' AS DateTime), CAST(N'2022-06-15T07:28:45.480' AS DateTime), NULL, N'thu-truong-bo-y-te-chua-co-du-co-so-de-bat-buoc-tiem-vac-xin-covid-19-voi-tre-em', 0)
INSERT [dbo].[tb_News] ([Id], [Title], [Description], [Detail], [Image], [CategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive]) VALUES (21, N'Here are the trends I see coming this fall', N'Here are the trends I see coming this fall', N'<span style="color:rgb(32, 33, 36); font-family:consolas,lucida console,courier new,monospace; font-size:12px">Here are the trends I see coming this fall</span>', N'/Uploads/images/sanpham/blog_1.jpg', 3, N'Here are the trends I see coming this fall', NULL, NULL, NULL, CAST(N'2022-06-15T07:27:54.530' AS DateTime), CAST(N'2022-06-15T07:27:54.530' AS DateTime), NULL, N'here-are-the-trends-i-see-coming-this-fall', 0)
INSERT [dbo].[tb_News] ([Id], [Title], [Description], [Detail], [Image], [CategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive]) VALUES (22, N'Here are the trends I see coming this fall', N'Here are the trends I see coming this fall', N'<span style="color:rgb(102, 102, 102); font-family:arial,helvetica,sans-serif; font-size:14px">Văn bản l&agrave; một loại h&igrave;nh phương tiện để ghi nhận, lưu giữ v&agrave; truyền đạt c&aacute;c th&ocirc;ng tin từ chủ thể n&agrave;y sang chủ thể kh&aacute;c bằng&nbsp;</span><a href="https://www.bing.com/search?q=Bi%E1%BB%83u%20t%C6%B0%E1%BB%A3ng%20wikipedia&amp;form=WIKIRE" style="color: rgb(68, 68, 68); text-decoration-line: none; border-bottom: 1px dashed rgb(204, 204, 204); font-family: Arial, Helvetica, sans-serif; font-size: 14px;">k&yacute; hiệu</a><span style="color:rgb(102, 102, 102); font-family:arial,helvetica,sans-serif; font-size:14px">&nbsp;gọi l&agrave;&nbsp;</span><a href="https://www.bing.com/search?q=Ch%E1%BB%AF%20vi%E1%BA%BFt%20wikipedia&amp;form=WIKIRE" style="color: rgb(68, 68, 68); text-decoration-line: none; border-bottom: 1px dashed rgb(204, 204, 204); font-family: Arial, Helvetica, sans-serif; font-size: 14px;">chữ viết</a><span style="color:rgb(102, 102, 102); font-family:arial,helvetica,sans-serif; font-size:14px">. N&oacute; gồm tập hợp c&aacute;c c&acirc;u c&oacute; t&iacute;nh trọn vẹn về nội dung, ho&agrave;n chỉnh về h&igrave;nh thức, c&oacute; t&iacute;nh li&ecirc;n kết chặt chẽ v&agrave; hướng tới một mục ti&ecirc;u&nbsp;</span><a href="https://www.bing.com/search?q=Giao%20ti%E1%BA%BFp%20wikipedia&amp;form=WIKIRE" style="color: rgb(68, 68, 68); text-decoration-line: none; border-bottom: 1px dashed rgb(204, 204, 204); font-family: Arial, Helvetica, sans-serif; font-size: 14px;">giao tiếp</a><span style="color:rgb(102, 102, 102); font-family:arial,helvetica,sans-serif; font-size:14px">&nbsp;nhất định. Hay n&oacute;i kh&aacute;c đi, văn bản l&agrave; một dạng sản phẩm của hoạt động giao tiếp bằng ng&ocirc;n</span>', N'/Uploads/images/sanpham/blog_2.jpg', 3, N'Văn bản là một loại hình phương tiện để ghi nhận, lưu giữ và truyền đạt các thông tin từ chủ thể này sang chủ thể khác bằng ký hiệu gọi là chữ viết. Nó gồm tập hợp các câu có tính trọn vẹn về nội dung, hoàn chỉnh về hình thức, có tính liên kết chặt chẽ và hướng tới một mục tiêu giao tiếp nhất định. Hay nói khác đi, văn bản là một dạng sản phẩm của hoạt động giao tiếp bằng ngôn', N'Văn bản là một loại hình phương tiện để ghi nhận, lưu giữ và truyền đạt các thông tin từ chủ thể này sang chủ thể khác bằng ký hiệu gọi là chữ viết. Nó gồm tập hợp các câu có tính trọn vẹn về nội dung, hoàn chỉnh về hình thức, có tính liên kết chặt chẽ và hướng tới một mục tiêu giao tiếp nhất định. Hay nói khác đi, văn bản là một dạng sản phẩm của hoạt động giao tiếp bằng ngôn', N'Văn bản là một loại hình phương tiện để ghi nhận, lưu giữ và truyền đạt các thông tin từ chủ thể này sang chủ thể khác bằng ký hiệu gọi là chữ viết. Nó gồm tập hợp các câu có tính trọn vẹn về nội dung, hoàn chỉnh về hình thức, có tính liên kết chặt chẽ và hướng tới một mục tiêu giao tiếp nhất định. Hay nói khác đi, văn bản là một dạng sản phẩm của hoạt động giao tiếp bằng ngôn', NULL, CAST(N'2022-06-15T07:28:25.000' AS DateTime), CAST(N'2023-11-28T14:42:29.050' AS DateTime), NULL, N'here-are-the-trends-i-see-coming-this-fall', 1)
SET IDENTITY_INSERT [dbo].[tb_News] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Order] ON 

INSERT [dbo].[tb_Order] ([Id], [Code], [CustomerName], [Phone], [Address], [TotalAmount], [Quantity], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [TypePayment], [Email]) VALUES (46, N'DH6048', N'Tuấn', N'0766547511', N'TPHCM', CAST(252500.00 AS Decimal(18, 2)), 0, N'0766547511', CAST(N'2023-11-28T21:21:55.893' AS DateTime), CAST(N'2023-11-28T21:21:55.893' AS DateTime), NULL, 1, N'xuantuanbvb@gmail.com')
SET IDENTITY_INSERT [dbo].[tb_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] ON 

INSERT [dbo].[tb_OrderDetail] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (71, 46, 24, CAST(252500.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[tb_OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([Id], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [ViewCount], [OriginalPrice]) VALUES (23, N'Thùng24 lon nước không calo chanh 330ml', N'10150522', N'Thùng 24 lon nước không calo chanh 330ml', N'<h2 style="text-align:justify"><strong>Pepsi kh&ocirc;ng calo chanh 330ml</strong></h2>

<p style="text-align:justify">Thế hệ Pepsi-Cola ti&ecirc;n phong d&agrave;nh cho bạn, với sự kết hợp đột ph&aacute; c&ugrave;ng Vị Chanh, đem đến một trải nghiệm SẢNG KHO&Aacute;I TỘT ĐỈNH, để bạn thoải m&aacute;i BUNG HẾT CHẤT M&Igrave;NH!</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong>Pepsi kh&ocirc;ng calo chanh 330ml</strong>&nbsp;l&agrave; sản phẩm nhận được nhiều sự tin tưởng v&agrave; sự lựa chọn của người d&ugrave;ng với việc kh&ocirc;ng chứa calo ph&ugrave; hợp với nhiều người sử dụng hơn.</p>

<p style="text-align:justify">Sản phẩm của Pepsi Việt Nam</p>

<p style="text-align:justify">Th&agrave;nh phần: Nước b&atilde;o h&ograve;a CO2, Chất điều chỉnh độ Axit (330, 338, 331(iii)), M&agrave;u tổng hợp (Caramen nh&oacute;m IV 150d), Hỗn hợp hương chanh tự nhi&ecirc;n, Chất tạo ngọt tổng hợp (Aspartame 951, Acesulfame kali 950, Sucralose 955), Chất bảo quản (202, 211), Caffeine.</p>

<p style="text-align:justify"><strong>Lưu &yacute;:</strong></p>

<p style="text-align:justify"><strong>- Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</strong></p>

<p style="text-align:justify"><strong>- H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh thực tế bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</strong></p>
', N'/Uploads/images/sanpham/product_1(1).png', CAST(226000.00 AS Decimal(18, 2)), NULL, 20, 1, 0, 0, 0, 2, N'Thùng 24 lon nước không calo chanh 330ml', NULL, NULL, NULL, CAST(N'2023-11-16T00:56:44.843' AS DateTime), CAST(N'2023-11-16T00:56:44.843' AS DateTime), NULL, N'Thùng24 lon nước không calo chanh 330ml', 1, 1, CAST(220000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Product] ([Id], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [ViewCount], [OriginalPrice]) VALUES (24, N'Thùng 24 chia nước ép cam Twister Tropicana 455ml', N'10011224', N'Thùng 24 chia nước ép cam Twister Tropicana 455ml', N'<h3 style="text-align:justify">Nước cam &eacute;p TWISTER 10% chai 450/455ml</h3>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">Với th&agrave;nh phần ch&iacute;nh từ t&eacute;p cam tươi mang lại vị ngọt thanh m&aacute;t c&ugrave;ng hương thơm tự nhi&ecirc;n trong từng t&eacute;p cam tươi, mang lại cảm gi&aacute;c sảng kho&aacute;i, tươi mới khi thưởng thức. Nước cam &eacute;p Twister 10% 455ml gi&agrave;u vitamin v&agrave; nhiều chất dinh dưỡng tốt cho sức khỏe v&agrave; sắc đẹp.</p>

<p style="text-align:justify">Với nguồn nguy&ecirc;n liệu tự nhi&ecirc;n được lựa chọn cẩn thận kết hợp c&ocirc;ng nghệ sản xuất hiện đại, mang đến cho bạn Tropicana Twister &ndash; một thức uống c&oacute; hương vị ngon tuyệt, tốt cho sức khỏe từ tr&aacute;i c&acirc;y tươi, chứa Vitamin A,C. Với th&ocirc;ng điệp &ldquo;Sức sống cho một ng&agrave;y tốt l&agrave;nh!&quot; cho ch&iacute;nh bạn v&agrave; những người xung quanh ng&agrave;y mới bừng sức sống.</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong>C&ocirc;ng dụng tuyệt vời của cam đối với cơ thể:</strong></p>

<p style="text-align:justify">Tr&aacute;i cam chứa rất nhiều dưỡng chất, axit tự nhi&ecirc;n,chất xơ, nhiều vitamin đặc biệt l&agrave; vitamin C,&hellip; đ&acirc;y l&agrave; những chất rất tốt cho sức khỏe. Cam c&oacute; thể ăn, l&agrave;m nước &eacute;p hay sinh tố đều rất ngon.</p>

<p style="text-align:justify">Cam c&oacute; vị ngọt ngọt, chua chua thường biết đến như một loại tr&aacute;i c&acirc;y tr&aacute;ng miệng, một ly nước giải kh&aacute;t. Ngo&agrave;i những t&aacute;c dụng n&agrave;y ra th&igrave; cam c&ograve;n c&oacute; nhiều c&ocirc;ng dụng tuyệt vời kh&aacute;c m&agrave; kh&ocirc;ng phải ai cũng biết.</p>

<p style="text-align:justify">Hương vị: Twister Cam c&oacute; th&agrave;nh phần chủ yếu từ nước cốt cam tự nhi&ecirc;n, vị ngọt thanh m&aacute;t c&ugrave;ng hương thơm tự nhi&ecirc;n trong từng t&eacute;p cam tươi, mang lại cảm gi&aacute;c sảng kho&aacute;i, tươi mới.</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify">Hướng dẫn sử dụng: D&ugrave;ng trực tiếp, ngon hơn khi ướp lạnh, hoặc d&ugrave;ng với đ&aacute;</p>

<p style="text-align:justify">Hướng dẫn bảo quản: Bảo quản nơi sạch sẽ, kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời</p>

<p style="text-align:justify">Hạn sử dụng: 06 th&aacute;ng kể từ ng&agrave;y sản xuất</p>

<p style="text-align:justify">Xuất xứ: Việt Nam</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong>***Lưu &yacute;:</strong></p>

<p style="text-align:justify"><strong>+ Bao b&igrave; sản phẩm thay c&oacute; thể đổi theo đợt nhập h&agrave;ng</strong></p>

<p style="text-align:justify"><strong>+ Gi&aacute; sản phẩm đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh v&agrave; ph&iacute; vận chuyển</strong></p>
', N'/Uploads/images/sanpham/product_1_3.png', CAST(252500.00 AS Decimal(18, 2)), NULL, 1, 1, 0, 0, 0, 2, N'Thùng 24 chia nước ép cam Twister Tropicana 455ml', NULL, NULL, NULL, CAST(N'2023-11-16T01:00:22.520' AS DateTime), CAST(N'2023-11-16T01:00:22.520' AS DateTime), NULL, N'Nước ép cam Twister Tropicana 455ml', 1, 1, CAST(200000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Product] ([Id], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [ViewCount], [OriginalPrice]) VALUES (25, N'MEATDELI Thịt xay tươi ướp sẵn', N'10140306', N'MEATDELI Thịt xay tươi ướp sẵn', N'<p style="text-align:justify"><strong>Th&ocirc;ng tin sản phẩm</strong><br />
Sản phẩm đươc xay tươi từ những miếng thịt tươi ngon nhất của Thịt sạch MEATDeli &ndash; c&ocirc;ng nghệ thịt m&aacute;t Ch&acirc;u &Acirc;u, tươi sạch vẹn to&agrave;n, an to&agrave;n tuyệt đối.</p>

<p style="text-align:justify">Với c&ocirc;ng thức phối trộn thịt độc đ&aacute;o với tỉ lệ nạc mỡ h&agrave;i h&ograve;a c&ugrave;ng b&iacute; quyết gia vị tinh tế c&oacute; hạt ng&ograve; thơm lừng, thịt xay tươi ướp sẵn MEATDeli vừa thấm vị đậm đ&agrave; vừa ngọt thịt tự nhi&ecirc;n, l&agrave;m thịt vi&ecirc;n sốt c&agrave;, thịt vi&ecirc;n b&uacute;n chả, thịt vi&ecirc;n chi&ecirc;n v&agrave;ng,... đều thơm ngon kh&oacute; cưỡng.</p>
', N'/Uploads/images/sanpham/product_2_1.jpg', CAST(54486.00 AS Decimal(18, 2)), NULL, 20, 1, 0, 0, 0, 1, N'MEATDELI Thịt xay tươi ướp sẵn', NULL, NULL, NULL, CAST(N'2023-11-16T01:02:51.237' AS DateTime), CAST(N'2023-11-16T01:02:51.237' AS DateTime), NULL, N'MEATDELI Thịt xay tươi ướp sẵn', 1, 0, CAST(54000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Product] ([Id], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [ViewCount], [OriginalPrice]) VALUES (26, N'MEATDELI [PRE] Móng giò (S)', N'10281595', N'MEATDELI [PRE] Móng giò (S)', N'<h2 style="text-align:justify">Thịt MEAT DELI [PREMIUM] M&oacute;ng gi&ograve; (S)</h2>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong>Thịt MEATDeli&nbsp;</strong><span>l&agrave; sản phẩm c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng, được chăn nu&ocirc;i theo hướng c&ocirc;ng nghiệp sạch, đảm bảo an to&agrave;n cho người sử dụng. Thịt được chế biến tr&ecirc;n c&ocirc;ng nghệ d&acirc;y chuyền Ch&acirc;u &Acirc;u, sạch sẽ từ kh&acirc;u chế biến đến kh&acirc;u, đ&oacute;ng g&oacute;i. Tất cả đều đảm bảo vệ sinh an to&agrave;n thực phẩm, mang đến cho người ti&ecirc;u d&ugrave;ng sản phẩm c&oacute; chất lượng tốt nhất.</span></p>

<p style="text-align:justify">&nbsp;</p>

<h3 style="text-align:justify">Th&ocirc;ng tin sản phẩm</h3>

<p style="text-align:justify">M&oacute;ng gi&ograve; c&oacute; nhiều lớp da dẻo, g&acirc;n gi&ograve;n v&agrave; lớp thịt ngọt mềm c&ugrave;ng phần mỡ, tuy nhi&ecirc;n khi ăn cũng kh&ocirc;ng bị cảm gi&aacute;c g&acirc;y b&eacute;o. M&oacute;ng gi&ograve; rất phổ biến l&agrave; một m&oacute;n ăn d&ugrave;ng để tăng c&acirc;n cho những người gầy, hoặc l&agrave; m&oacute;n ăn gi&uacute;p lợi sữa cho c&aacute;c mẹ sau khi sinh. C&oacute; nhiều m&oacute;n ăn được chế biến từ ch&acirc;n gi&ograve;, chủ yếu l&agrave; m&oacute;n ninh nhừ như canh hầm, kho, nấu đ&ocirc;ng, giả cầy,...</p>

<p style="text-align:justify">&nbsp;</p>

<p style="text-align:justify"><strong><em>Lưu &yacute;:</em></strong></p>

<ol>
	<li><strong><em>Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</em></strong></li>
	<li><strong><em>H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh thực tế bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</em></strong></li>
</ol>
', N'/Uploads/images/sanpham/product_2_3.jpg', CAST(31564.00 AS Decimal(18, 2)), NULL, 1, 1, 1, 0, 0, 1, N'MEATDELI [PRE] Móng giò (S)', NULL, NULL, NULL, CAST(N'2023-11-16T01:04:45.443' AS DateTime), CAST(N'2023-11-16T01:04:45.443' AS DateTime), NULL, N'MEATDELI [PRE] Móng giò (S)', 1, 0, CAST(31000.00 AS Decimal(18, 2)))
INSERT [dbo].[tb_Product] ([Id], [Title], [ProductCode], [Description], [Detail], [Image], [Price], [PriceSale], [Quantity], [IsHome], [IsSale], [IsFeature], [IsHot], [ProductCategoryId], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive], [ViewCount], [OriginalPrice]) VALUES (27, N'Bộ cây lau nhà xoay tay Lock&Lock Corner ETM494', N'10314721', N'Bộ cây lau nhà xoay tay Lock&Lock Corner ETM494', N'<p style="text-align:justify"><strong>Bộ c&acirc;y lau nh&agrave; xoay tay Lock&amp;Lock Corner ETM494</strong>&nbsp;gồm&nbsp;<strong>1 th&ugrave;ng chứa nước, 1 c&acirc;y lau v&agrave; 2 b&ocirc;ng lau</strong>, sẽ g&oacute;p phần gi&uacute;p bạn giữ cho nh&agrave; cửa&nbsp;lu&ocirc;n được sạch sẽ v&agrave; kh&ocirc; tho&aacute;ng. Sản phẩm đến từ thương hiệu h&agrave;ng gia dụng uy t&iacute;n, đảm bảo chất lượng v&agrave; độ bền cao.</p>

<h3 style="text-align:justify"><strong>Cấu tạo bằng nhựa PP bền bỉ v&agrave; chất lượng</strong></h3>

<p style="text-align:justify">Th&ugrave;ng chứa được l&agrave;m bằng chất liệu&nbsp;<strong>nhựa&nbsp;PP bền đẹp</strong>, chất lượng, c&oacute; khả năng chịu được va đập tốt, cho độ bền sử dụng l&acirc;u d&agrave;i theo thời gian. Tr&ecirc;n th&ugrave;ng lau&nbsp;c&ograve;n được&nbsp;<strong>t&iacute;ch hợp quai cầm tiện lợi</strong>, gi&uacute;p bạn dễ d&agrave;ng di chuyển đến mọi vị tr&iacute; một c&aacute;ch nhanh ch&oacute;ng v&agrave; thuận tiện.</p>

<h3 style="text-align:justify"><strong>B&ocirc;ng lau l&agrave;m&nbsp;bằng sợi microfiber c&oacute; khả năng thấm h&uacute;t tốt</strong></h3>

<p style="text-align:justify">Phần&nbsp;<strong>b&ocirc;ng lau được&nbsp;l&agrave;m bằng&nbsp;b&ocirc;ng microfiber</strong>,&nbsp;kh&ocirc;ng xơ cứng n&ecirc;n&nbsp;<strong>kh&ocirc;ng l&agrave;m trầy xước&nbsp;bề mặt được lau</strong>.&nbsp;Sợi microfiber với&nbsp;<strong>khả năng thấm nước gấp 7 lần v&agrave; kh&ocirc; nhanh gấp 3 lần so với&nbsp;c&aacute;c khăn lau th&ocirc;ng thường</strong>&nbsp;kh&aacute;c gi&uacute;p lau nhanh,&nbsp;sạch mọi ng&oacute;c ng&aacute;ch, ngay cả những nơi kh&oacute; tiếp cận trong nh&agrave;.</p>

<h3 style="text-align:justify"><strong>Th&acirc;n c&acirc;y bằng inox chắc chắn, dễ d&agrave;ng th&aacute;o lắp v&agrave; điều chỉnh độ d&agrave;i</strong></h3>

<p style="text-align:justify">Th&acirc;n c&acirc;y được cấu tạo bằng&nbsp;<strong>inox chắc chắn</strong>, kh&ocirc;ng hoen gỉ, c&oacute; khả năng chịu lực tốt. Bạn&nbsp;<strong>c&oacute; thể th&aacute;o lắp v&agrave; điều chỉnh độ d&agrave;i&nbsp;theo &yacute; muốn</strong>&nbsp;với kh&oacute;a nhựa tiện dụng. B&ecirc;n cạnh đ&oacute;, phần đầu c&acirc;y&nbsp;lau được nối với th&acirc;n bằng một v&ograve;ng nhựa li&ecirc;n kết cho ph&eacute;p sản phẩm c&oacute; thể&nbsp;chuyển động xoay 360 độ độc đ&aacute;o.<br />
&nbsp;</p>

<h3 style="text-align:justify"><strong>&Aacute;p dụng cơ chế vắt nước ly t&acirc;m hiện đại v&agrave; độc đ&aacute;o</strong></h3>

<p style="text-align:justify">Sản phẩm sử dụng&nbsp;<strong>cơ chế vắt ly t&acirc;m hiện đại</strong>, gi&uacute;p bạn vắt nước kh&ocirc;ng bị bắn ra ngo&agrave;i. Bạn cũng&nbsp;<strong>kh&ocirc;ng cần phải đạp ch&acirc;n hoặc vắt tay</strong>&nbsp;dễ g&acirc;y đau lưng v&agrave; mỏi cơ.</p>

<h3 style="text-align:justify"><strong>Th&iacute;ch hợp sử dụng tr&ecirc;n nhiều bề mặt vật liệu kh&aacute;c nhau</strong></h3>

<p style="text-align:justify"><strong>Bộ c&acirc;y lau nh&agrave; xoay tay Lock&amp;Lock Corner ETM494</strong>&nbsp;sẽ l&agrave; một vật dụng l&yacute; tưởng để bạn&nbsp;<strong>vệ sinh c&aacute;c kh&ocirc;ng gian kh&aacute;c nhau&nbsp;</strong>như: s&agrave;n gỗ, trần nh&agrave;, k&iacute;nh, cửa sổ xe hơi, cầu thang, ph&ograve;ng bếp, ph&ograve;ng kh&aacute;ch, ph&ograve;ng tắm, ph&ograve;ng ngủ...</p>

<h3 style="text-align:justify">Th&ocirc;ng số sản phẩm</h3>

<ol>
	<li>K&iacute;ch thước: Th&ugrave;ng giặt (33 x 23,5 cm); C&acirc;y lau (128cm); B&ocirc;ng lau (26cm)</li>
	<li>Chất liệu: Th&ugrave;ng giặt v&agrave; c&acirc;y lau: Nhựa PP + PE + ABS, th&eacute;p kh&ocirc;ng gỉ; B&ocirc;ng lau: Sợi b&ocirc;ng tổng hợp</li>
</ol>

<h3 style="text-align:justify"><strong>Th&ocirc;ng tin thương hiệu</strong></h3>

<p style="text-align:justify">C&ocirc;ng ty Lock&amp;Lock có trụ sở chính đặt tại Seoul, Hàn Qu&ocirc;́c, được thị trường th&ecirc;́ giới bi&ecirc;́t đ&ecirc;́n như là c&ocirc;ng ty ti&ecirc;n phong trong lĩnh vực sản xu&acirc;́t h&ocirc;̣p nhựa đựng thức ăn có khóa 4 cạnh. K&ecirc;̉ từ khi thành l&acirc;̣p năm 1985, c&ocirc;ng ty đã sản xu&acirc;́t hơn 600 loại sản ph&acirc;̉m đa dạng với nhi&ecirc;̀u ki&ecirc;̉u dáng m&acirc;̃u mã, chủng loại như: đ&ocirc;̀ dùng nhà b&ecirc;́p, đ&ocirc;̀ dùng gia dụng, đ&ocirc;̀ dùng dã ngoại, h&ocirc;̣p đựng cơm, và các sản ph&acirc;̉m chuy&ecirc;n dùng dành cho trẻ em.&nbsp;Hiện tại,&nbsp;Lock&amp;Lock&nbsp;đ&atilde; sở hữu 100 bằng s&aacute;ng chế, kiểu d&aacute;ng v&agrave; thương hiệu tr&ecirc;n 85 quốc gia với chứng nhận ISO 9001 về chất lượng đảm bảo của sản phẩm.</p>

<p style="text-align:justify"><strong>Lưu &yacute;:</strong></p>

<p style="text-align:justify"><strong>- Hạn sử dụng thực tế qu&yacute; kh&aacute;ch vui l&ograve;ng xem tr&ecirc;n bao b&igrave;.</strong></p>

<p style="text-align:justify"><strong>- H&igrave;nh sản phẩm chỉ mang t&iacute;nh chất minh họa, h&igrave;nh thực tế bao b&igrave; của sản phẩm t&ugrave;y thời điểm sẽ kh&aacute;c so với thực tế.</strong></p>
', N'/Uploads/images/sanpham/product_3_1.jpg', CAST(369000.00 AS Decimal(18, 2)), NULL, 12, 1, 1, 0, 0, 3, N'Bộ cây lau nhà xoay tay Lock&Lock Corner ETM494', NULL, NULL, NULL, CAST(N'2023-11-16T01:06:50.427' AS DateTime), CAST(N'2023-11-16T01:06:50.427' AS DateTime), NULL, N'Bộ cây lau nhà xoay tay Lock&Lock Corner ETM494', 1, 0, CAST(319.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (1, N'Thực phẩm', NULL, N'/Uploads/images/sanpham/pic1-van-de-ve-sinh-an-toan-thuc-pham-hien-nay-rat-quan-trong.jpg', N'Thực Phẩm', NULL, NULL, NULL, CAST(N'2023-11-16T00:09:25.000' AS DateTime), CAST(N'2023-11-16T00:15:19.047' AS DateTime), NULL, N'thuc-pham')
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (2, N'Đồ uống', NULL, N'/Uploads/images/sanpham/banner2.jpg', N'Đồ Uống', NULL, NULL, NULL, CAST(N'2022-06-15T07:56:26.000' AS DateTime), CAST(N'2023-11-16T00:16:19.977' AS DateTime), NULL, N'do-uong')
INSERT [dbo].[tb_ProductCategory] ([Id], [Title], [Description], [Icon], [SeoTitle], [SeoDescription], [SeoKeywords], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias]) VALUES (3, N'Đồ dùng cá nhân', NULL, N'/Uploads/images/sanpham/banner3.jpg', N'Đồ Dùng Cá Nhân', NULL, NULL, NULL, CAST(N'2022-06-08T07:31:13.000' AS DateTime), CAST(N'2023-11-16T00:18:31.337' AS DateTime), NULL, N'do-dung-ca-nhan')
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductImage] ON 

INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (32, 23, N'/Uploads/images/sanpham/product_1(1).png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (33, 23, N'/Uploads/images/sanpham/product_1_2.png', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (34, 24, N'/Uploads/images/sanpham/product_1_3.png', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (35, 24, N'/Uploads/images/sanpham/product_1_4.png', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (36, 25, N'/Uploads/images/sanpham/product_2_1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (37, 25, N'/Uploads/images/sanpham/product_2_2.jpg', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (38, 26, N'/Uploads/images/sanpham/product_2_3.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (39, 26, N'/Uploads/images/sanpham/product_2_4.png', 0)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (40, 27, N'/Uploads/images/sanpham/product_3_1.jpg', 1)
INSERT [dbo].[tb_ProductImage] ([Id], [ProductId], [Image], [IsDefault]) VALUES (41, 27, N'/Uploads/images/sanpham/product_3_2.jpg', 0)
SET IDENTITY_INSERT [dbo].[tb_ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Subscribe] ON 

INSERT [dbo].[tb_Subscribe] ([Id], [Email], [CreatedDate]) VALUES (1, N'xuantuanbvb@gmail.com', CAST(N'2023-11-18T07:05:42.223' AS DateTime))
INSERT [dbo].[tb_Subscribe] ([Id], [Email], [CreatedDate]) VALUES (2, N'xuantuanbvb1@gmail.com', CAST(N'2023-11-18T07:10:16.920' AS DateTime))
INSERT [dbo].[tb_Subscribe] ([Id], [Email], [CreatedDate]) VALUES (3, N'xuantuanbvb2@gmail.com', CAST(N'2023-11-18T07:10:57.403' AS DateTime))
INSERT [dbo].[tb_Subscribe] ([Id], [Email], [CreatedDate]) VALUES (4, N'xuantuanbvb3@gmail.com', CAST(N'2023-11-21T12:19:25.673' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Subscribe] OFF
GO
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingDesSeo', NULL, NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingEmail', N'xuantuanbvb@gmail.com', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingHotline', N'0766547511', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingKeySeo', N'Market shop', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingLogo', N'/Uploads/images/setting/product_6.png', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingTitle', N'MarketShop', NULL)
INSERT [dbo].[tb_SystemSetting] ([SettingKey], [SettingValue], [SettingDescription]) VALUES (N'SettingTitleSeo', N'Colo shop', NULL)
GO
ALTER TABLE [dbo].[tb_Category] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tb_News] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tb_Order] ADD  DEFAULT ((0)) FOR [TypePayment]
GO
ALTER TABLE [dbo].[tb_Product] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tb_Product] ADD  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[tb_Product] ADD  DEFAULT ((0)) FOR [OriginalPrice]
GO
ALTER TABLE [dbo].[tb_ProductCategory] ADD  DEFAULT ('') FOR [Alias]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tb_News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_News_dbo.tb_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tb_Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_News] CHECK CONSTRAINT [FK_dbo.tb_News_dbo.tb_Category_CategoryId]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tb_Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Order_OrderId]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Product_ProductId]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_Product_dbo.tb_ProductCategory_ProductCategoryId] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[tb_ProductCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_dbo.tb_Product_dbo.tb_ProductCategory_ProductCategoryId]
GO
ALTER TABLE [dbo].[tb_ProductImage]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_ProductImage_dbo.tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_ProductImage] CHECK CONSTRAINT [FK_dbo.tb_ProductImage_dbo.tb_Product_ProductId]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKe]    Script Date: 11/28/2023 10:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
GO
USE [master]
GO
ALTER DATABASE [WebBanHangOnline] SET  READ_WRITE 
GO
