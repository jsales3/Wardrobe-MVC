USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 3/18/2018 11:45:13 PM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 3/18/2018 11:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessorieID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessorieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 3/18/2018 11:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 3/18/2018 11:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessorieID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 3/18/2018 11:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 3/18/2018 11:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessorieID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (1, N'Hat', N'/Content/images/hat.jpg', N'Green', NULL, NULL, N'Nike')
INSERT [dbo].[Accessories] ([AccessorieID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (2, N'Hat-2', N'/Content/images/hat1.jpg', N'Black', NULL, NULL, N'Nike')
INSERT [dbo].[Accessories] ([AccessorieID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (3, N'Hat-3', N'/Content/images/hat3.jpg', N'Black', NULL, NULL, N'Nike')
INSERT [dbo].[Accessories] ([AccessorieID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (4, N'Watch', N'/Content/images/watch.jpg', N'Brown', NULL, NULL, NULL)
INSERT [dbo].[Accessories] ([AccessorieID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (5, N'Watch-2', N'/Content/images/watch2.jpg', N'Black', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (1, N'Blue Jeans', N'/Content/images/jeans.jpg', N'Blue', NULL, N'Everyday', NULL)
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (2, N'Joggers', N'/Content/images/joggers.jpg', N'Black', N'Fall/Winter', N'Everyday', N'Sweatpants')
INSERT [dbo].[Bottoms] ([BottomID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (3, N'Pants', N'/Content/images/pants.jpg', N'Grey', NULL, NULL, N'Pants')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessorieID], [Name], [Type]) VALUES (2, 5, 3, 2, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (1, N'Sneakers', N'/Content/images/shoes.jpg', N'Green', NULL, N'Everyday', N'Adidas')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (2, N'Shoes', N'/Content/images/shoe1.jpg', N'Blue', NULL, N'Special Occasion', N'Dress shoes')
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (3, N'Boots', N'/Content/images/boots.jpg', N'Grey', N'Fall/Winter', NULL, NULL)
INSERT [dbo].[Shoes] ([ShoeID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (4, N'Yezzy''s', N'/Content/images/yezzys.jpg', N'Black', NULL, N'Everyday', N'Adidas')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (1, N'Tee-Shirt', N'/Content/images/shirt.jpg', N'Black', N'Spring/Summer', N'Everyday', NULL)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (2, N'Tee-Shirt-2', N'/Content/images/shirt1.jpg', N'Grey', N'Summer', N'Everyday', NULL)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (3, N'Tee-Shirt-3', N'/Content/images/shirt2.jpg', N'Black', N'Summer', N'Everyday', NULL)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (4, N'Tee-Shirt-4', N'/Content/images/shirt3.jpg', N'Black', N'Summer', N'Everyday', NULL)
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (5, N'Dress-shirt', N'/Content/images/shirt4.jpg', N'Black', NULL, N'Special Occasion', N'Casual')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (6, N'Tee-Shirt-5', N'/Content/images/shirt5.jpg', N'Black/grey', N'Spring/Summer', N'Everyday', N'Hollister')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (8, N'Hoodie', N'/Content/images/hoodie1.jpg', N'Burgundy', N'Fall/Winter', N'Everyday', N'Adidas')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (9, N'Hoodie-2', N'/Content/images/hoodie2.jpg', N'white/grey', N'Fall/Winter', N'Everyday', N'Nike')
INSERT [dbo].[Tops] ([TopID], [Name], [Photo], [Color], [Season], [Occasion], [Type]) VALUES (10, N'Hoodie-3', N'/Content/images/hoodie4.jpg', N'Burgundy', N'Fall/Winter', N'Everyday', N'Patagonia')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessorieID])
REFERENCES [dbo].[Accessories] ([AccessorieID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
