USE [master]
GO
/****** Object:  Database [ManageProducts]    Script Date: 19-Aug-21 20:03:04 ******/
CREATE DATABASE [ManageProducts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProductManager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProductManager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ManageProducts] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ManageProducts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ManageProducts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ManageProducts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ManageProducts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ManageProducts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ManageProducts] SET ARITHABORT OFF 
GO
ALTER DATABASE [ManageProducts] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ManageProducts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ManageProducts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ManageProducts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ManageProducts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ManageProducts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ManageProducts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ManageProducts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ManageProducts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ManageProducts] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ManageProducts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ManageProducts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ManageProducts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ManageProducts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ManageProducts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ManageProducts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ManageProducts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ManageProducts] SET RECOVERY FULL 
GO
ALTER DATABASE [ManageProducts] SET  MULTI_USER 
GO
ALTER DATABASE [ManageProducts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ManageProducts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ManageProducts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ManageProducts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ManageProducts] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ManageProducts] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ManageProducts', N'ON'
GO
ALTER DATABASE [ManageProducts] SET QUERY_STORE = OFF
GO
USE [ManageProducts]
GO
/****** Object:  Table [dbo].[Pageviews]    Script Date: 19-Aug-21 20:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pageviews](
	[pageviews] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19-Aug-21 20:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Pageviews] ([pageviews]) VALUES (766)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (50, N'Etekcity Food Kitchen Scale', N'https://images-na.ssl-images-amazon.com/images/I/410ydcgTvDL.jpg', 3425435)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (51, N'Blendtec Total Classic Original Blender', N'https://images-na.ssl-images-amazon.com/images/I/41AZOLr72bL.jpg', 234324)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (52, N'Rubbermaid', N'https://images-na.ssl-images-amazon.com/images/I/41HHIIqpz9L.jpg', 52344512)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (53, N'Pyrex Glass Measuring Cup Set', N'https://images-na.ssl-images-amazon.com/images/I/410YzK6cfAL.jpg', 32432)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (54, N'Chef''n (Lemon) FreshForce Citrus Juicer', N'https://images-na.ssl-images-amazon.com/images/I/21dCSKF5HfS.jpg', 5423152)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (55, N'COMFEE'' Rice Cooker, Slow Cooker, Steamer, Stewpot, Saute All in One', N'https://m.media-amazon.com/images/I/61NuL3eNJdL._AC_UY218_.jpg', 21000090)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (56, N'Tovolo Sphere Ice Molds - Set of 2', N'https://m.media-amazon.com/images/I/71TRpW88XNS._AC_UY218_.jpg', 3432343)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (57, N'OXO Good Grips Cherry and Olive Pitter, Red', N'https://m.media-amazon.com/images/I/71Y4+o7LZBL._AC_UY218_.jpg', 234234)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (58, N'Rubbermaid No-Slip Large, Silverware Tray', N'https://m.media-amazon.com/images/I/81AUS8NVZiL._AC_UY218_.jpg', 3423423)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (59, N'MSC International 12614 Joie Bagel Slicer', N'https://images-na.ssl-images-amazon.com/images/I/81lxpUSAf1L._AC_UL160_SR160,160_.jpg', 34343)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (60, N'Amazon Basics 8 Pack 9 Volt Performance', N'https://m.media-amazon.com/images/I/711MfFWIoGL._AC_UL320_.jpg', 34)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (61, N'Amazon Basics Admiral 16-Piece Old Fashioned and Coolers Glass Drinkware Set', N'https://m.media-amazon.com/images/I/71hk+kUonLL._AC_UL320_.jpg', 333.543212890625)
INSERT [dbo].[Products] ([id], [name], [image], [price]) VALUES (65, N'sdafdasfsd', N'https://m.media-amazon.com/images/I/41FZY3gv5cS._AC_UY218_.jpg', 344323)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [ManageProducts] SET  READ_WRITE 
GO
