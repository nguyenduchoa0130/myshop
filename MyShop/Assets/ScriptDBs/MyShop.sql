USE [master]
GO
/****** Object:  Database [MyShopDB]    Script Date: 12/30/2023 5:35:55 PM ******/
CREATE DATABASE [MyShopDB]
GO
USE [MyShopDB]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/30/2023 5:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](50) NULL,
	[CatIcon] [nvarchar](50) NULL,
	[CatDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 12/30/2023 5:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[CusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/30/2023 5:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](150) NULL,
	[Ram] [float] NULL,
	[Rom] [int] NULL,
	[ScreenSize] [float] NULL,
	[TinyDes] [nvarchar](300) NULL,
	[FullDes] [nvarchar](1000) NULL,
	[Price] [money] NULL,
	[ImagePath] [text] NULL,
	[Trademark] [text] NULL,
	[BatteryCapacity] [int] NULL,
	[CatID] [int] NULL,
	[Quantity] [int] NULL,
	[Block] [int] NULL,
	[PromoID] [int] NULL,
	[PromotionPrice] [money] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotion]    Script Date: 12/30/2023 5:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotion](
	[IdPromo] [int] IDENTITY(1,1) NOT NULL,
	[PromoCode] [nvarchar](50) NULL,
	[DiscountPercent] [int] NULL,
 CONSTRAINT [pk_promo] PRIMARY KEY CLUSTERED 
(
	[IdPromo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase]    Script Date: 12/30/2023 5:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase](
	[PurchaseID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProID] [int] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [money] NULL,
 CONSTRAINT [PK_purchase] PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop_order]    Script Date: 12/30/2023 5:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop_order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CusID] [int] NULL,
	[CreateAt] [date] NULL,
	[FinalTotal] [money] NULL,
	[ProfitTotal] [money] NULL,
 CONSTRAINT [PK_shop_order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 12/30/2023 5:35:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [text] NULL,
	[Gender] [nchar](15) NULL,
	[Address] [text] NULL,
	[Tel] [nchar](15) NULL,
	[AvatarPath] [text] NULL,
	[IsHide] [tinyint] NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [pk_user] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([CatID], [CatName], [CatIcon], [CatDescription]) VALUES (1, N'Android', N'Android', N'Các thiết bị điện thoại chạy hệ điều hành Android')
INSERT [dbo].[category] ([CatID], [CatName], [CatIcon], [CatDescription]) VALUES (2, N'Iphone', N'Apple', N'Các thiết bị điện thoại chạy hệ điều hành IOS của hãng Apple')
INSERT [dbo].[category] ([CatID], [CatName], [CatIcon], [CatDescription]) VALUES (14, N'Cục gạch', N'MobilePhone', N'Điện thoại cứng như cục gạch')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (1, N'Nguyễn Thái Hiệp')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (2, N'Nguyễn Thị Hạnh Nhân')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (3, N'Dương Vũ Thái')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (4, N'Đình Văn Vũ')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (5, N'Lê Văn Nam')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (6, N'Nguyễn Thị Ngọc Hải')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (7, N'Nguyễn Trần Nhật Thi')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (8, N'Lê Bảo Bảo')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (9, N'Bảo Châu')
INSERT [dbo].[customer] ([CusID], [CusName]) VALUES (10, N'Hà Anh Tuấn')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3013, N'Samsung Galaxy S23', 6, 256, 6.1, N'Samsung Galaxy S23 5G 128GB chắc hẳn không còn là cái tên 
quá xa lạ đối với các tín độ công nghệ hiện nay, được xem là một trong những gương mặt chủ 
chốt đến từ nhà Samsung với cấu hình mạnh mẽ bậc nhất, camera trứ danh hàng đầu cùng 
lối hoàn thiện vô cùng sang trọng và hiện đại.', NULL, 20990000.0000, N'Assets/Images/sp/7d9c9403-abba-41e0-88c2-f55785a41f0e.png', N'Samsung', 3900, 1, 3, 0, NULL, 20990000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3014, N'iPhone 14 Pro Max', 6, 256, 6.7, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.', NULL, 27290000.0000, N'Assets/Images/sp/3014.png', N'Apple', 4323, 2, 27, 0, 3, 16374000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3015, N'iPhone 14 Pro', 6, 256, 6.7, N'iPhone 14 Pro 128GB - Mẫu smartphone đến từ nhà Apple được mong đợi nhất năm 2022, lần này nhà Táo mang 
đến cho chúng ta một phiên bản với kiểu thiết kế hình notch mới, cấu hình mạnh mẽ nhờ con chip Apple A16 
Bionic và cụm camera có độ phân giải được nâng cấp lên đến 48 MP.', NULL, 25290000.0000, N'Assets/Images/sp/3015.png', N'Apple', 3200, 2, 10, 0, NULL, 25290000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3016, N'Samsung Galaxy S21 FE', 6, 128, 6.4, N'Samsung Galaxy S21 FE 5G (6GB/128GB) được Samsung ra mắt với dáng dấp thời thượng, cấu hình khỏe,
chụp ảnh đẹp với bộ 3 camera chất lượng, thời lượng pin
đủ dùng hằng ngày và còn gì nữa? Mời bạn khám phá qua 
nội dung sau ngay.', NULL, 10990000.0000, N'Assets/Images/sp/3016.png', N'Samsung', 4500, 1, 60, 0, 6, 9891000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3017, N'Xiaomi Redmi 12C', 4, 64, 6.71, N'Xiaomi Redmi 12C 64GB là một thiết bị di động tầm trung được
giới thiệu bởi Xiaomi, với cấu hình vượt trội 
so với các đối thủ trong cùng phân khúc', NULL, 2890000.0000, N'Assets/Images/sp/fbc8c87c-4474-4c37-b2ba-706037ca87a1.png', N'Xiaomi', 5000, 1, 58, 0, 7, 2601000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3018, N'Samsung Galaxy S23 Ultra', 8, 128, 6.8, N'Cuối cùng thì chiếc điện thoại Samsung Galaxy S23
cũng đã chính thức ra mắt tại sự kiện Galaxy Unpacked 
vào đầu tháng 2 năm 2023, máy nổi bật với camera 200 MP 
chất lượng, hiệu năng mạnh mẽ.', NULL, 26990000.0000, N'Assets/Images/sp/3018.png', N'Samsung', 5000, 1, 1, 0, 3, 16194000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3019, N'iPhone 11 64GB', 4, 6, 6.1, N'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng
cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', NULL, 10590000.0000, N'Assets/Images/sp/3019.png', N'Apple', 3110, 2, 4, 0, 3, 6354000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3020, N'Điện thoại Vivo Y35', 8, 128, 6.58, N'Tiếp nối sự thành công của các mẫu smartphone tầm trung tại thị trường Việt Nam thì mới đây Vivo đã chính thức cho ra mắt điện thoại Vivo Y35. 
Máy sở hữu cho mình khả năng sạc siêu nhanh 44 W', NULL, 6290000.0000, N'Assets/Images/sp/3020.png', N'Vivo', 5000, 1, 2, 0, NULL, 6290000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3021, N'OPPO Reno8 T 5G', 8, 64, 6.7, N'Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc OPPO Reno8 T 5G 256GB cuối cùng
đã được giới thiệu chính thức tại Việt Nam', NULL, 10990000.0000, N'Assets/Images/sp/3021.png', N'OPPO', 4800, 1, 1, 0, 6, 9891000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3022, N'Samsung Galaxy A23', 4, 128, 6.6, N'Samsung Galaxy A23 4GB sở hữu bộ thông số kỹ thuật khá ấn tượng trong phân khúc, máy có một hiệu năng ổn định, cụm 4 camera thông minh cùng một diện mạo trẻ 
trung phù hợp cho mọi đối tượng người dùng.', NULL, 4790000.0000, N'Assets/Images/sp/3022.png', N'Samsung', 5000, 1, 8, 0, NULL, 4790000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3025, N'Samsung Galaxy S20 FE', 8, 256, 6.5, N'Samsung đã giới thiệu đến người dùng thành viên mới của dòng S20 Series đó chính là điện thoại Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', NULL, 8650000.0000, N'Assets/Images/sp/3025.png', N'Samsung', 4500, 1, 18, 0, NULL, 8650000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3026, N'iPhone 14 128GB', 6, 128, 6.1, N'iPhone 14 128GB được xem là mẫu smartphone bùng nổ của nhà táo trong năm 2022, ấn tượng với ngoại hình trẻ trung, màn hình chất lượng đi kèm với những cải tiến về hệ điều hành và thuật toán xử lý hình ảnh, giúp máy trở thành cái tên thu hút được đông đảo người dùng quan tâm tại thời điểm ra mắt.', NULL, 19590000.0000, N'Assets/Images/sp/3026.png', N'Apple', 3279, 2, 26, 0, 6, 17631000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3027, N'iPhone 14 Pro Max', 6, 128, 6.7, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022', NULL, 27090000.0000, N'Assets/Images/sp/2d6cb8fe-710f-40f6-b749-fb8ed4d2b3ae.png', N'Apple', 4323, 2, 27, 0, 3, 16254000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3028, N'Samsung Galaxy A34', 8, 256, 6.6, N'Samsung Galaxy A34 5G là mẫu điện thoại thông minh tầm trung mới của Samsung được ra mắt vào tháng 03/2023', NULL, 8630000.0000, N'Assets/Images/sp/8a8cbf04-4d71-4582-a2b2-b3477fe1f0e5.png', N'Samsung', 5000, 1, 23, 0, NULL, 8630000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3029, N'iPhone 14 Pro Max', 6, 128, 6.7, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022', NULL, 27090000.0000, NULL, N'Apple', 4323, 2, 12, 1, NULL, 27090000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3030, N'Samsung Galaxy A34', 8, 256, 6.6, N'Samsung Galaxy A34 5G là mẫu điện thoại thông minh tầm trung mới của Samsung được ra mắt vào tháng 03/2023', NULL, 8630000.0000, N'Assets/Images/sp/eebe1110-5b9f-4df1-8af8-0aef0f06c2c9.png', N'Samsung', 5000, 1, 22, 1, NULL, 8630000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3031, N'iPhone 12 Pro Max', 6, 128, 6.6, N'iPhone 12 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2020', NULL, 17090000.0000, N'Assets/Images/sp/22dde313-d0fe-4b39-86c4-7a3bb7ef9d51.png', N'Apple', 3323, 2, 28, 0, 7, 15381000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3032, N'Vivo Y16 64GB', 4, 64, 6.5, N'Vivo Y16 64GB tiếp tục sẽ là cái tên được hãng bổ sung cho bộ sưu tập điện thoại Vivo dòng Y trong thời điểm cuối năm 2022', NULL, 3290000.0000, N'Assets/Images/sp/444a25f8-7a1b-4a81-8227-3233bfd06d9e.png', N'Vivo ', 5000, 1, 40, 0, NULL, 3290000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3033, N'OPPO Reno8 Pro 5G', 12, 256, 6.7, N'Lần này nhà OPPO mang đến cho chúng ta một chiếc điện thoại có thiết kế đặc biệt, máy sở hữu một diện mạo khác hẳn với những chiếc điện thoại OPPO Reno trước đây', NULL, 17990000.0000, N'Assets/Images/sp/b5ec601d-473a-4fdf-b2c1-5415b38f2a43.png', N'OPPO', 4500, 1, 28, 0, NULL, 17990000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3034, N'Điện thoại OPPO A55', 4, 64, 6.5, N'OPPO A55 4G có 3 phiên bản màu độc đáo là xanh lá, xanh dương và màu đen. Thiết kế cong 3D cùng kích thước mỏng nhẹ, OPPO A55 4G vừa vặn trong tay người cầm, cho từng thao tác trải nghiệm thoải mái và chắc chắn.', NULL, 3690000.0000, N'Assets/Images/sp/f8237f5c-9e82-4f32-9106-15f93fb34f02.png', N'OPPO', 5000, 1, 25, 0, NULL, 3690000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3035, N'iPhone 13 mini 64GB', 4, 64, 5.4, N'iPhone 13 mini được trang bị bộ vi xử lý A15 Bionic sản xuất trên tiến trình 5 nm giúp cải thiện hiệu suất và giảm điện năng tiêu thụ đến 15% so với phiên bản A14 Bionic trước đó, đáp ứng hoàn hảo trong công việc cũng như trong giải trí của người dùng tốt hơn.', NULL, 13999000.0000, N'Assets/Images/sp/382734b4-d941-49a2-9407-6e4726b99bb9.png', N'Apple', 2438, 2, 50, 0, 6, 12599100.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3036, N'iPhone 14 Pro Max', 8, 256, 6.67, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2020', NULL, 37090000.0000, N'Assets/Images/sp/fbedb6f0-f591-4142-94ab-463d55eaa582.png', N'Apple', 4323, 2, 30, 0, 6, 33381000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3037, N'Vivo Y02s 32GB', 3, 32, 6.51, N'Vivo Y02s được hoàn thiện với hai mặt và các cạnh vát phẳng giúp cho thân hình của chiếc máy trở nên vuông vắn và cực kỳ hợp xu hướng hiện nay. Nổi bật hơn hết là cụm camera được Vivo thiết kế với hai cụm tròn to nổi khá ấn tượng.', NULL, 2790000.0000, N'Assets/Images/sp/3c8ca825-3eea-4f94-b5d9-ee4576f7790a.png', N'Vivo', 5000, 1, 49, 0, 4, 2790000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3038, N'iPhone 13 mini 128GB', 4, 128, 5.4, N'iPhone 13 mini được trang bị bộ vi xử lý A15 Bionic sản xuất trên tiến trình 5 nm giúp cải thiện hiệu suất và giảm điện năng tiêu thụ đến 15% so với phiên bản A14 Bionic trước đó, đáp ứng hoàn hảo trong công việc cũng như trong giải trí của người dùng tốt hơn.', NULL, 16990000.0000, N'Assets/Images/sp/ae4fe396-0a7e-4d78-8df7-773035b137e5.png', N'Apple', 2438, 2, 48, 0, NULL, 16990000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3039, N'iPhone 14 Pro Max', 8, 256, 6.67, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2020', NULL, 37090000.0000, NULL, N'Apple', 4323, 1, 30, 1, NULL, 37090000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (3040, N'Vivo Y02s 32GB', 3, 32, 6.5, N'Vivo Y02s được hoàn thiện với hai mặt và các cạnh vát phẳng giúp cho thân hình của chiếc máy trở nên vuông vắn và cực kỳ hợp xu hướng hiện nay. Nổi bật hơn hết là cụm camera được Vivo thiết kế với hai cụm tròn to nổi khá ấn tượng.', NULL, 2790000.0000, NULL, N'Vivo', 5000, 1, 60, 1, NULL, NULL)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (4038, N'Điện thoại Nokia 8210', 1, 12, 2.8, N'Nokia 8210 4G có lẽ là một lựa chọn phù hợp với những ai cần cho mình một chiếc điện thoại phổ thông phục vụ cho nhu cầu nghe gọi. Máy có giá thành rẻ và vừa có độ bền cao', NULL, 1590000.0000, N'Assets/Images/sp/46277ded-2dba-45e2-af05-d23585cf0312.png', N'Nokia', 1450, 14, 31, 0, 6, 1431000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (4039, N'Điện thoại Mobell Rock 4', 1, 5, 2.4, N'Mobell Rock 4 được xem là một trong những chiếc điện thoại bền bỉ nhất mà nhà Mobell chính thức cho ra mắt trên thị trường, sở hữu diện mạo cứng cáp cùng viên pin cực trâu giúp máy có thể đồng hành cùng bạn trong suốt một thời gian dài.', NULL, 810000.0000, N'Assets/Images/sp/8c1be437-a63b-44bc-8bec-f74a3edd8cbb.png', N'Mobell', 3250, 14, 69, 0, 3, 486000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (4040, N'iPhone 13 mini 128GB', 4, 128, 5.4, N'iPhone 13 mini được trang bị bộ vi xử lý A15 Bionic sản xuất trên tiến trình 5 nm giúp cải thiện hiệu suất và giảm điện năng tiêu thụ đến 15% so với phiên bản A14 Bionic trước đó, đáp ứng hoàn hảo trong công việc cũng như trong giải trí của người dùng tốt hơn.', NULL, 16990000.0000, NULL, N'Apple', 2438, 2, 50, 1, NULL, 16990000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (4041, N'iPhone 14 Pro Max', 8, 256, 6.7, N'iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2020', NULL, 37090000.0000, NULL, N'Apple', 4323, 2, 30, 1, NULL, 37090000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (4042, N'Vivo Y02s 32GB', 3, 32, 6.51, N'Vivo Y02s được hoàn thiện với hai mặt và các cạnh vát phẳng giúp cho thân hình của chiếc máy trở nên vuông vắn và cực kỳ hợp xu hướng hiện nay. Nổi bật hơn hết là cụm camera được Vivo thiết kế với hai cụm tròn to nổi khá ấn tượng.', NULL, 2790000.0000, NULL, N'Vivo', 5000, 1, 60, 1, NULL, 2790000.0000)
INSERT [dbo].[product] ([ProID], [ProName], [Ram], [Rom], [ScreenSize], [TinyDes], [FullDes], [Price], [ImagePath], [Trademark], [BatteryCapacity], [CatID], [Quantity], [Block], [PromoID], [PromotionPrice]) VALUES (4047, N'iPhone 15 Pro Max', 8, 512, 6.7, N'iPhone 15 Pro Max 512 GB là một chiếc điện thoại thông minh cao cấp với nhiều ưu điểm nổi bật, bao gồm thiết kế đẹp mắt, hiệu năng mạnh mẽ, camera tuyệt vời và mức giá hợp lý.', NULL, 39690000.0000, N'Assets/Images/sp/deb9de17-a1a2-4124-91dd-b12da21017bd.png', N'iPhone (Apple)', 4422, 2, 10, 0, NULL, 39690000.0000)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[promotion] ON 

INSERT [dbo].[promotion] ([IdPromo], [PromoCode], [DiscountPercent]) VALUES (3, N'mã giảm giá 40%', 40)
INSERT [dbo].[promotion] ([IdPromo], [PromoCode], [DiscountPercent]) VALUES (4, N'mã giảm giá 70%', 70)
INSERT [dbo].[promotion] ([IdPromo], [PromoCode], [DiscountPercent]) VALUES (6, N'mã giảm giá 25%', 25)
INSERT [dbo].[promotion] ([IdPromo], [PromoCode], [DiscountPercent]) VALUES (7, N'mã giảm giá 10%', 10)
SET IDENTITY_INSERT [dbo].[promotion] OFF
GO
SET IDENTITY_INSERT [dbo].[purchase] ON 

INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (61, 59, 3028, 3, 27702300.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (62, 60, 3026, 6, 125767800.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (63, 61, 3025, 2, 18511000.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (64, 61, 3027, 2, 57972600.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (66, 63, 3017, 6, 18553800.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (67, 64, 3037, 5, 14926500.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (2067, 62, 3026, 2, 41922600.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (2068, 62, 3017, 2, 6184600.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (2069, 2, 3029, 2, 57972600.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (3069, 2066, 3030, 3, 27702300.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (3070, 2067, 3013, 1, 22459300.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4069, 3066, 4038, 2, 3402600.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4070, 3067, 4038, 4, 6124680.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4071, 3069, 4039, 1, 520020.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4074, 3071, 4039, 3, 1560060.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4075, 3070, 4039, 2, 1040040.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4076, 3072, 4039, 3, 1560060.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4077, 3072, 4038, 2, 3062340.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4078, 3073, 3031, 2, 36572600.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4079, 3074, 3033, 2, 38498600.0000)
INSERT [dbo].[purchase] ([PurchaseID], [OrderID], [ProID], [Quantity], [TotalPrice]) VALUES (4080, 3075, 3037, 3, 8955900.0000)
SET IDENTITY_INSERT [dbo].[purchase] OFF
GO
SET IDENTITY_INSERT [dbo].[shop_order] ON 

INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (2, 1, CAST(N'2022-03-01' AS Date), 148227100.0000, 9697100.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3, 7, CAST(N'2022-03-02' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (4, 1, CAST(N'2022-03-02' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (5, 1, CAST(N'2022-03-03' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (6, 7, CAST(N'2022-03-04' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (7, 1, CAST(N'2022-03-05' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (8, 1, CAST(N'2022-03-10' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (9, 7, CAST(N'2022-03-13' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (10, 1, CAST(N'2022-03-18' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (11, 1, CAST(N'2022-03-19' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (12, 7, CAST(N'2022-03-25' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (13, 1, CAST(N'2022-03-25' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (14, 1, CAST(N'2022-03-25' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (15, 7, CAST(N'2022-03-25' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (16, 1, CAST(N'2023-03-01' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (17, 1, CAST(N'2023-03-01' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (18, 7, CAST(N'2023-03-02' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (19, 1, CAST(N'2023-03-02' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (20, 1, CAST(N'2023-03-03' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (21, 7, CAST(N'2023-03-04' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (22, 1, CAST(N'2023-03-05' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (23, 1, CAST(N'2023-03-10' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (24, 7, CAST(N'2023-03-13' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (25, 1, CAST(N'2023-03-18' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (26, 1, CAST(N'2023-03-19' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (27, 7, CAST(N'2023-03-25' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (28, 1, CAST(N'2023-03-25' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (29, 1, CAST(N'2023-03-25' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (30, 7, CAST(N'2023-03-25' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (59, 1, CAST(N'2023-04-25' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (60, 1, CAST(N'2023-04-25' AS Date), 125767800.0000, 8227800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (61, 7, CAST(N'2023-04-25' AS Date), 76483600.0000, 5003600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (62, 6, CAST(N'2023-04-25' AS Date), 48107200.0000, 3147200.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (63, 1, CAST(N'2023-04-25' AS Date), 18553800.0000, 1213800.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (64, 5, CAST(N'2023-04-26' AS Date), 14926500.0000, 976500.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (2064, 1, CAST(N'2023-08-27' AS Date), NULL, NULL)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (2065, 1, CAST(N'2023-07-27' AS Date), NULL, NULL)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (2066, 1, CAST(N'2023-09-27' AS Date), 27702300.0000, 1812300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (2067, 1, CAST(N'2023-04-27' AS Date), 22459300.0000, 1469300.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3066, 2, CAST(N'2023-04-29' AS Date), 3402600.0000, 222600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3067, 1, CAST(N'2023-04-29' AS Date), 6805200.0000, 445200.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3068, 9, CAST(N'2023-04-29' AS Date), NULL, NULL)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3069, 9, CAST(N'2023-11-29' AS Date), 866700.0000, 56700.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3070, 1, CAST(N'2023-11-29' AS Date), 1903530.0000, 283530.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3071, 10, CAST(N'2023-04-29' AS Date), 1560060.0000, 102060.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3072, 1, CAST(N'2023-04-30' AS Date), 4622400.0000, 302400.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3073, 4, CAST(N'2023-10-30' AS Date), 36572600.0000, 2392600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3074, 4, CAST(N'2023-10-30' AS Date), 38498600.0000, 2518600.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3075, 3, CAST(N'2023-10-01' AS Date), 8955900.0000, 585900.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3076, 1, CAST(N'2023-12-30' AS Date), NULL, NULL)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3077, 7, CAST(N'2023-12-30' AS Date), 37878000.0000, 2478000.0000)
INSERT [dbo].[shop_order] ([OrderID], [CusID], [CreateAt], [FinalTotal], [ProfitTotal]) VALUES (3078, 1, CAST(N'2023-12-30' AS Date), 37878000.0000, 2478000.0000)
SET IDENTITY_INSERT [dbo].[shop_order] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([UserID], [Username], [Password], [Fullname], [Gender], [Address], [Tel], [AvatarPath], [IsHide], [RoleID]) VALUES (3, N'nguyen x', N'bn6ggMGJmOE=', N'hieppro589', N'Male           ', N'123, TP. HCM', N'0977328391     ', N'path/to/avatar.jpg', 0, 1)
INSERT [dbo].[user] ([UserID], [Username], [Password], [Fullname], [Gender], [Address], [Tel], [AvatarPath], [IsHide], [RoleID]) VALUES (4, N'admin', N'bn6ggMGJmOE=', N'admin', N'Male           ', N'admin', N'0977328391     ', N'path/to/avatar.jpg', 0, 1)
INSERT [dbo].[user] ([UserID], [Username], [Password], [Fullname], [Gender], [Address], [Tel], [AvatarPath], [IsHide], [RoleID]) VALUES (5, N'Nguyễn Đức Hòa', N'bn6ggMGJmOE=', N'hoa', N'Male           ', N'HCM', N'0909900123     ', N'path/to/avatar.jpg', 0, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([CatID])
REFERENCES [dbo].[category] ([CatID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_promotion] FOREIGN KEY([PromoID])
REFERENCES [dbo].[promotion] ([IdPromo])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_promotion]
GO
ALTER TABLE [dbo].[purchase]  WITH CHECK ADD  CONSTRAINT [FK_purchase_product] FOREIGN KEY([ProID])
REFERENCES [dbo].[product] ([ProID])
GO
ALTER TABLE [dbo].[purchase] CHECK CONSTRAINT [FK_purchase_product]
GO
ALTER TABLE [dbo].[purchase]  WITH CHECK ADD  CONSTRAINT [FK_purchase_shop_order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[shop_order] ([OrderID])
GO
ALTER TABLE [dbo].[purchase] CHECK CONSTRAINT [FK_purchase_shop_order]
GO
ALTER TABLE [dbo].[shop_order]  WITH CHECK ADD  CONSTRAINT [FK_shop_order_customer] FOREIGN KEY([CusID])
REFERENCES [dbo].[customer] ([CusID])
GO
ALTER TABLE [dbo].[shop_order] CHECK CONSTRAINT [FK_shop_order_customer]
GO
USE [master]
GO
ALTER DATABASE [MyShopDB] SET  READ_WRITE 
GO
