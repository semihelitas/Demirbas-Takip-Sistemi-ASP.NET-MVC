USE [master]
GO
/****** Object:  Database [DemirbasTakipSistemi]    Script Date: 6/22/2019 6:45:47 PM ******/
CREATE DATABASE [DemirbasTakipSistemi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemirbasTakipSistemi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DemirbasTakipSistemi.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DemirbasTakipSistemi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DemirbasTakipSistemi_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DemirbasTakipSistemi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemirbasTakipSistemi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemirbasTakipSistemi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET  MULTI_USER 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemirbasTakipSistemi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DemirbasTakipSistemi] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DemirbasTakipSistemi]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CurrentUserData]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CurrentUserData](
	[currentUserRoleID] [int] NOT NULL,
	[currentUserName] [varchar](20) NOT NULL,
	[userID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CurrentUserData] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] NOT NULL,
	[PersonName] [varchar](30) NOT NULL,
	[PersonContact] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductSerialNumber] [nvarchar](25) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductBrand] [nvarchar](20) NOT NULL,
	[PersonID] [int] NOT NULL,
	[RegisterDateTime] [datetime] NOT NULL,
	[ProductAmount] [int] NOT NULL,
	[ProductWarrantyDate] [datetime] NOT NULL,
	[ServiceContact] [nvarchar](50) NOT NULL,
	[ProductFeatures] [nvarchar](50) NOT NULL,
	[ProductImage] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductSerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[projectCode] [varchar](30) NOT NULL,
	[projectClient] [varchar](30) NOT NULL,
	[projectName] [varchar](30) NOT NULL,
	[projectStartDate] [datetime] NOT NULL,
	[projectStatus] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[projectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProjectProducts]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProjectProducts](
	[projectCode] [varchar](30) NOT NULL,
	[productSerialNumber] [nvarchar](25) NOT NULL,
	[productBrand] [nvarchar](20) NOT NULL,
	[productModel] [nvarchar](20) NOT NULL,
	[registerDateTime] [datetime] NOT NULL,
	[productAmount] [int] NOT NULL,
	[productWarrantyStartDate] [datetime] NOT NULL,
	[productServiceContact] [nvarchar](50) NOT NULL,
	[productFeatures] [nvarchar](50) NOT NULL,
	[productImage] [nvarchar](100) NULL,
	[productWarrantyFinishDate] [datetime] NOT NULL,
	[productProvider] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ProjectProducts] PRIMARY KEY CLUSTERED 
(
	[productSerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1010, N'Monitör')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2020, N'Yazıcı')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3030, N'SSD')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4040, N'Laptop')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5050, N'HDD')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6060, N'Klavye')
SET IDENTITY_INSERT [dbo].[CurrentUserData] ON 

INSERT [dbo].[CurrentUserData] ([currentUserRoleID], [currentUserName], [userID]) VALUES (3, N'semihelitas', 2071)
SET IDENTITY_INSERT [dbo].[CurrentUserData] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id], [username], [password], [role_id]) VALUES (1, N'ilkeryoncaci', N'123', 1)
INSERT [dbo].[Login] ([id], [username], [password], [role_id]) VALUES (2, N'kamilkacmaz', N'123', 2)
INSERT [dbo].[Login] ([id], [username], [password], [role_id]) VALUES (3, N'semihelitas', N'123', 3)
SET IDENTITY_INSERT [dbo].[Login] OFF
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897690, N'Aylin Çolak', N'05364547623')
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897691, N'Selin Özsüt', N'selinozgut@gmail.com')
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897692, N'Bora Karapinar', N'05331001010')
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897693, N'Ferhat Demir', N'05378300706')
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897694, N'Emin Eroglu', N'emineroglu@gmail.com')
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897695, N'Serhat Yilmaz', N'05349992222')
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897696, N'Semih Elitas', N'05364546565')
INSERT [dbo].[Person] ([PersonID], [PersonName], [PersonContact]) VALUES (21897697, N'Bertan Çakici', N'05428991010')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'12321', 1010, N'sadasd', 21897693, CAST(N'2019-06-06 00:00:00.000' AS DateTime), 5, CAST(N'2019-06-09 00:00:00.000' AS DateTime), N'sadsa', N'sadsa', NULL)
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'2142ewwq', 3030, N'semih', 21897692, CAST(N'2019-10-10 00:00:00.000' AS DateTime), 5, CAST(N'2019-10-10 00:00:00.000' AS DateTime), N'sadsad', N'adsadsa', NULL)
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'A5HHS212PB', 5050, N'Seagate', 21897693, CAST(N'2019-05-10 00:00:00.000' AS DateTime), 300, CAST(N'2019-05-17 00:00:00.000' AS DateTime), N'0536 454 65 65', N'1 TB', N'hdd_A5HHS212PB.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'AGLA23OC', 4040, N'DN', 21897696, CAST(N'2019-10-10 00:00:00.000' AS DateTime), 5, CAST(N'2019-10-10 00:00:00.000' AS DateTime), N'SADSA', N'SADSA', NULL)
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'F6SG2JH13K', 4040, N'Apple', 21897696, CAST(N'2019-04-15 00:00:00.000' AS DateTime), 10, CAST(N'2019-04-15 00:00:00.000' AS DateTime), N'0533 121 52 10', N'Macbook Air', N'laptop_F6SG2JH13K.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'GJGJGJSSFSW', 2020, N'Canon', 21897690, CAST(N'2019-04-15 00:00:00.000' AS DateTime), 10, CAST(N'2022-04-15 00:00:00.000' AS DateTime), N'0533 222 10 15', N'Canon Siyah Printer', N'yazıcı_GJGJGJSSFSW.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'HZFU76KTMT', 4040, N'Monster', 21897690, CAST(N'2019-05-27 00:00:00.000' AS DateTime), 3, CAST(N'2025-05-20 00:00:00.000' AS DateTime), N'0533 121 52 10', N'Gaming Laptop', N'laptop_HZFU76KTMT.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'L5SF8WB3OK', 6060, N'Asus', 21897692, CAST(N'2019-05-04 00:00:00.000' AS DateTime), 35, CAST(N'2019-05-27 00:00:00.000' AS DateTime), N'0533 121 52 10', N'Gaming Led Klavye', N'klavye_L5SF8WB3OK.png')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'R8UV6AA3DL', 3030, N'Samsung', 21897696, CAST(N'2019-05-20 00:00:00.000' AS DateTime), 250, CAST(N'2019-06-30 00:00:00.000' AS DateTime), N'0542 311 55 10', N'500GB EVO', N'ssd_R8UV6AA3DL.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'RPG832KFLG', 1010, N'Asus', 21897695, CAST(N'2019-04-15 00:00:00.000' AS DateTime), 12, CAST(N'2022-04-15 00:00:00.000' AS DateTime), N'0533 121 52 10', N'27 inch - IPS', N'monitör_RPG832KFLG.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'S4KC6PG7NB', 1010, N'HP', 21897697, CAST(N'2019-05-01 00:00:00.000' AS DateTime), 1, CAST(N'2019-05-31 00:00:00.000' AS DateTime), N'0536 333 20 20', N'27 inch - IPS', N'monitör_S4KC6PG7NB.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'SMH832AF6X', 5050, N'Seagate', 21897693, CAST(N'1996-09-08 00:00:00.000' AS DateTime), 35, CAST(N'2023-09-08 00:00:00.000' AS DateTime), N'0536 454 65 65', N'2 TB', N'hdd_SMH832AF6X.jpg')
INSERT [dbo].[Product] ([ProductSerialNumber], [CategoryID], [ProductBrand], [PersonID], [RegisterDateTime], [ProductAmount], [ProductWarrantyDate], [ServiceContact], [ProductFeatures], [ProductImage]) VALUES (N'TUQ4UKPJ7P', 2020, N'Huawei', 21897692, CAST(N'2018-11-24 00:00:00.000' AS DateTime), 1, CAST(N'2025-01-20 00:00:00.000' AS DateTime), N'0536 333 20 20', N'Huawei Beyaz Printer', N'yazıcı_TUQ4UKPJ7P.jpg')
INSERT [dbo].[Project] ([projectCode], [projectClient], [projectName], [projectStartDate], [projectStatus]) VALUES (N'19-00001', N'Microsoft', N'Microware', CAST(N'2019-05-31 00:00:00.000' AS DateTime), N'Aktif')
INSERT [dbo].[Project] ([projectCode], [projectClient], [projectName], [projectStartDate], [projectStatus]) VALUES (N'sad', N'sadsa', N'sadsa', CAST(N'2019-10-10 00:00:00.000' AS DateTime), N'Aktif')
INSERT [dbo].[Project] ([projectCode], [projectClient], [projectName], [projectStartDate], [projectStatus]) VALUES (N'sadsa', N'das', N'sada', CAST(N'2019-06-13 00:00:00.000' AS DateTime), N'Aktif')
INSERT [dbo].[Project] ([projectCode], [projectClient], [projectName], [projectStartDate], [projectStatus]) VALUES (N'safsa', N'asfsa', N'sagfa', CAST(N'2019-10-10 00:00:00.000' AS DateTime), N'Pasif')
INSERT [dbo].[ProjectProducts] ([projectCode], [productSerialNumber], [productBrand], [productModel], [registerDateTime], [productAmount], [productWarrantyStartDate], [productServiceContact], [productFeatures], [productImage], [productWarrantyFinishDate], [productProvider]) VALUES (N'19-00001', N'SN87KH93YZ', N'Asus', N'Rog-312', CAST(N'2019-05-31 00:00:00.000' AS DateTime), 1, CAST(N'2019-07-31 00:00:00.000' AS DateTime), N'05364546565', N'i5-5200U, 8GB Ram 250SSD - Siyah Renk Gaming Book', NULL, CAST(N'2023-07-31 00:00:00.000' AS DateTime), N'Aliexpress')
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role]) VALUES (1, N'yönetici')
INSERT [dbo].[Role] ([role_id], [role]) VALUES (2, N'kullanıcı')
INSERT [dbo].[Role] ([role_id], [role]) VALUES (3, N'geliştirici')
SET IDENTITY_INSERT [dbo].[Role] OFF
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [R_10] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [R_10]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Person]
GO
ALTER TABLE [dbo].[ProjectProducts]  WITH CHECK ADD  CONSTRAINT [FK_ProjectProducts_Project] FOREIGN KEY([projectCode])
REFERENCES [dbo].[Project] ([projectCode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProjectProducts] CHECK CONSTRAINT [FK_ProjectProducts_Project]
GO
/****** Object:  StoredProcedure [dbo].[LoginByUsernamePassword]    Script Date: 6/22/2019 6:45:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================  
 -- Author:          <Author,,Name>  
 -- Create date: <Create Date,,>  
 -- Description:     <Description,,>  
 -- =============================================  
 CREATE PROCEDURE [dbo].[LoginByUsernamePassword]   
      @username varchar(50),  
      @password varchar(50)  
 AS  
 BEGIN  
      SELECT id, username, password, role_id  
      FROM Login  
      WHERE username = @username  
      AND password = @password  
 END  
 

GO
USE [master]
GO
ALTER DATABASE [DemirbasTakipSistemi] SET  READ_WRITE 
GO
