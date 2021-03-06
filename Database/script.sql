USE [master]
GO
/****** Object:  Database [ShoppingCart]    Script Date: 3/9/2018 9:23:35 AM ******/
CREATE DATABASE [ShoppingCart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoppingCart', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoppingCart_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShoppingCart_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoppingCart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoppingCart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoppingCart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [ShoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoppingCart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoppingCart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoppingCart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShoppingCart] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[Cartid]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cartid](
	[Cartid] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NOT NULL,
	[Productid] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Paid] [bit] NULL,
	[Puurchase] [datetime] NULL,
 CONSTRAINT [PK_Cardid] PRIMARY KEY CLUSTERED 
(
	[Cartid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productid]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productid](
	[Productid] [int] IDENTITY(1,1) NOT NULL,
	[Productname] [varchar](50) NULL,
	[Productprice] [varchar](50) NULL,
	[Productimage] [varchar](50) NULL,
 CONSTRAINT [PK_Productid] PRIMARY KEY CLUSTERED 
(
	[Productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Userid]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Userid](
	[Userid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Userid] PRIMARY KEY CLUSTERED 
(
	[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cartid] ON 

INSERT [dbo].[Cartid] ([Cartid], [Userid], [Productid], [Quantity], [Paid], [Puurchase]) VALUES (1, 1, 1, 5, 1, CAST(N'2018-03-08 10:10:59.557' AS DateTime))
INSERT [dbo].[Cartid] ([Cartid], [Userid], [Productid], [Quantity], [Paid], [Puurchase]) VALUES (2, 1, 3, 1, 1, CAST(N'2018-03-08 10:10:59.557' AS DateTime))
INSERT [dbo].[Cartid] ([Cartid], [Userid], [Productid], [Quantity], [Paid], [Puurchase]) VALUES (3, 1, 4, 1, 1, CAST(N'2018-03-08 10:10:59.557' AS DateTime))
INSERT [dbo].[Cartid] ([Cartid], [Userid], [Productid], [Quantity], [Paid], [Puurchase]) VALUES (4, 1, 5, 1, 1, CAST(N'2018-03-08 10:10:59.557' AS DateTime))
INSERT [dbo].[Cartid] ([Cartid], [Userid], [Productid], [Quantity], [Paid], [Puurchase]) VALUES (5, 1, 10, 1, 1, CAST(N'2018-03-08 10:10:59.557' AS DateTime))
SET IDENTITY_INSERT [dbo].[Cartid] OFF
SET IDENTITY_INSERT [dbo].[Productid] ON 

INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (1, N'dw x johnny cupcake', N'500', N'Images/dwjohnny.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (3, N'DW 6600/r', N'100', N'Images/dwausa.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (4, N'DW 6600/b', N'250', N'Images/dwblack.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (5, N'DW 6600/y', N'230', N'Images/dwyellow.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (6, N'Frogman/p', N'300', N'Images/fmpink.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (7, N'Frogman/red', N'320', N'Images/fmred.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (8, N'Frogman/y', N'300', N'Images/fmyell.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (9, N'Rangeman/g,y', N'400', N'Images/rmgy.png')
INSERT [dbo].[Productid] ([Productid], [Productname], [Productprice], [Productimage]) VALUES (10, N'Rangeman/w', N'390', N'Images/rmwhite.png')
SET IDENTITY_INSERT [dbo].[Productid] OFF
SET IDENTITY_INSERT [dbo].[Userid] ON 

INSERT [dbo].[Userid] ([Userid], [Username], [Password]) VALUES (1, N'ikram', N'991122')
SET IDENTITY_INSERT [dbo].[Userid] OFF
/****** Object:  StoredProcedure [dbo].[AddToCart]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddToCart] 
	-- Add the parameters for the stored procedure here
	 @UserId int,
	 @ProductId int
	 AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

IF exists(select * from Cartid where Userid=@UserId and Productid=@ProductId and Paid is null)
BEGIN
 

UPDATE [dbo].[Cartid]
   SET  [Quantity] =  (select Quantity from Cartid where Userid=@UserId and Productid=@ProductId 
   and Paid is null)+1
 WHERE Userid=@UserId and Productid=@ProductId and Paid is null
 

END
ELSE

BEGIN
 

INSERT INTO [dbo].[Cartid]
           ([Userid]
           ,[Productid]
           ,[Quantity]
           )
     VALUES
           (@Userid 
           ,@Productid
           ,1
          )	
 


END

END

GO
/****** Object:  StoredProcedure [dbo].[Authentication]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Authentication] 
	-- Add the parameters for the stored procedure here
	@Username varchar(50),
	@Password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here



SELECT [Userid]
      ,[Username]
      ,[Password]
  FROM [dbo].[Userid] where Username=@Username and [Password]=@Password



END

GO
/****** Object:  StoredProcedure [dbo].[CartItem]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CartItem] 
	-- Add the parameters for the stored procedure here
	@UserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 select p.Productname,
	 p.Productimage,
	 p.Productprice,c.Quantity,(p.Productprice*c.Quantity) as Total 
	 from Productid p inner join
	 Cartid c on c.Productid=p.Productid
	 where c.Userid=@UserId and Paid is null 
END

GO
/****** Object:  StoredProcedure [dbo].[Checkout]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Checkout]
	-- Add the parameters for the stored procedure here
	@Userid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

UPDATE [dbo].[Cartid]
   SET [Paid] = 'true'
      ,[Puurchase] = GETDATE()
 WHERE Userid= @Userid and Paid is null


END

GO
/****** Object:  StoredProcedure [dbo].[ProductSelectAll]    Script Date: 3/9/2018 9:23:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductSelectAll] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	


SELECT [Productid]
      ,[Productname]
      ,[Productprice]
      ,[Productimage]
  FROM [dbo].[Productid]



END

GO
USE [master]
GO
ALTER DATABASE [ShoppingCart] SET  READ_WRITE 
GO
