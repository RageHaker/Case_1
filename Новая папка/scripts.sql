USE [Case_Test]
GO
/****** Object:  Table [dbo].[Contractor]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contractor](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contractor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoyaltyCard]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoyaltyCard](
	[Number] [nvarchar](16) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Midlename] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_LoyaltyCard] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movement]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movement](
	[Id] [int] NOT NULL,
	[WerehauseFrom] [int]  NULL,
	[WerehauseTo] [int] NOT NULL,
	[DateMovement] [date] NOT NULL,
	[Count] [int] NOT NULL,
	[Product] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Movement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningHour]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningHour](
	[Id] [int] NOT NULL,
	[PointOfSale] [int] NOT NULL,
	[Day] [nvarchar](50) NOT NULL,
	[StartWork] [time](7) NOT NULL,
	[EndWork] [time](7) NOT NULL,
	[StartDinner] [time](7) NOT NULL,
	[ExitDinner] [time](7) NOT NULL,
 CONSTRAINT [PK_OpeningHour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Photo_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointOfSale]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfSale](
	[Id] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Warehouse] [int] NOT NULL,
 CONSTRAINT [PK_PointOfSale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Photo] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[PaymentType] [nvarchar](50) NOT NULL,
	[LoyaltyCard] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleProduct]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleProduct](
	[Product] [int] NOT NULL,
	[Sale] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrafficPaht]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrafficPaht](
	[Id] [int] NOT NULL,
	[PointOfSale] [int] NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[Direction] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TrafficPaht] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 10.04.2022 22:37:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[Id] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Contractor] [int] NOT NULL,
	[Abbr] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Movement] CHECK CONSTRAINT [FK_Movement_Product]
GO
ALTER TABLE [dbo].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Warehouse] FOREIGN KEY([WerehauseFrom])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Movement] CHECK CONSTRAINT [FK_Movement_Warehouse]
GO
ALTER TABLE [dbo].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Warehouse1] FOREIGN KEY([WerehauseTo])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Movement] CHECK CONSTRAINT [FK_Movement_Warehouse1]
GO
ALTER TABLE [dbo].[OpeningHour]  WITH CHECK ADD  CONSTRAINT [FK_OpeningHour_PointOfSale] FOREIGN KEY([PointOfSale])
REFERENCES [dbo].[PointOfSale] ([Id])
GO
ALTER TABLE [dbo].[OpeningHour] CHECK CONSTRAINT [FK_OpeningHour_PointOfSale]
GO
ALTER TABLE [dbo].[PointOfSale]  WITH CHECK ADD  CONSTRAINT [FK_PointOfSale_Warehouse] FOREIGN KEY([Warehouse])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[PointOfSale] CHECK CONSTRAINT [FK_PointOfSale_Warehouse]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Photo1] FOREIGN KEY([Photo])
REFERENCES [dbo].[Photo] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Photo1]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_LoyaltyCard] FOREIGN KEY([LoyaltyCard])
REFERENCES [dbo].[LoyaltyCard] ([Number])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_LoyaltyCard]
GO
ALTER TABLE [dbo].[SaleProduct]  WITH CHECK ADD  CONSTRAINT [FK_SaleProduct_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[SaleProduct] CHECK CONSTRAINT [FK_SaleProduct_Product]
GO
ALTER TABLE [dbo].[SaleProduct]  WITH CHECK ADD  CONSTRAINT [FK_SaleProduct_Sale] FOREIGN KEY([Sale])
REFERENCES [dbo].[Sale] ([Id])
GO
ALTER TABLE [dbo].[SaleProduct] CHECK CONSTRAINT [FK_SaleProduct_Sale]
GO
ALTER TABLE [dbo].[TrafficPaht]  WITH CHECK ADD  CONSTRAINT [FK_TrafficPaht_PointOfSale] FOREIGN KEY([PointOfSale])
REFERENCES [dbo].[PointOfSale] ([Id])
GO
ALTER TABLE [dbo].[TrafficPaht] CHECK CONSTRAINT [FK_TrafficPaht_PointOfSale]
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_Contractor] FOREIGN KEY([Contractor])
REFERENCES [dbo].[Contractor] ([Id])
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [FK_Warehouse_Contractor]
GO
