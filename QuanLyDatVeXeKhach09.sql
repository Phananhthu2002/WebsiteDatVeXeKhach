USE [QuanLyDatVeXeKhach]
GO
/****** Object:  Table [dbo].[ChiTietVeXe]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietVeXe](
	[MaCTVX] [int] NOT NULL,
	[MaVe] [nvarchar](5) NOT NULL,
	[MaKH] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[NgayXuatVe] [date] NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_ChiTietVeXe] PRIMARY KEY CLUSTERED 
(
	[MaCTVX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietXe]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietXe](
	[MaLoaiXe] [int] NOT NULL,
	[MaXe] [int] NOT NULL,
	[BienSoXe] [nchar](15) NOT NULL,
	[SoGhe] [int] NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_ChiTietXe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiXe] ASC,
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenXe]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenXe](
	[MaChuyenXe] [nvarchar](5) NOT NULL,
	[MaTuyen] [int] NOT NULL,
	[GioKhoiHanh] [time](6) NOT NULL,
	[GioDen] [time](6) NOT NULL,
	[GheTrong] [int] NOT NULL,
	[MaTX] [nvarchar](5) NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_ChuyenXe] PRIMARY KEY CLUSTERED 
(
	[MaChuyenXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](5) NOT NULL,
	[HoKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](20) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[Email] [varchar](30) NULL,
	[CCCD] [varchar](12) NOT NULL,
	[ID] [int] NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_KhachHang_1] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiXeKhach]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiXeKhach](
	[MaLoaiXe] [int] NOT NULL,
	[TenLoaiXe] [nvarchar](50) NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_LoaiXeKhach] PRIMARY KEY CLUSTERED 
(
	[MaLoaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](5) NOT NULL,
	[HoNV] [nvarchar](50) NOT NULL,
	[TenNV] [nvarchar](20) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[CCCD] [nvarchar](12) NOT NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](30) NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenThamChieu]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenThamChieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_QuyenThamChieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiXe]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiXe](
	[MaTX] [nvarchar](5) NOT NULL,
	[HoTX] [nvarchar](50) NOT NULL,
	[TenTX] [nchar](20) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[CCCD] [nchar](12) NOT NULL,
	[SDT] [nchar](10) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_TaiXe] PRIMARY KEY CLUSTERED 
(
	[MaTX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenXe](
	[MaTuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenTuyen] [nvarchar](50) NOT NULL,
	[DiemKhoiHanh] [nvarchar](50) NOT NULL,
	[DiemDen] [nvarchar](50) NOT NULL,
	[BangGia] [decimal](18, 0) NOT NULL,
	[MaXe] [int] NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_TuyenXe] PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaVe] [nvarchar](5) NOT NULL,
	[MaNV] [nvarchar](5) NOT NULL,
	[MaChuyenXe] [nvarchar](5) NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_VeXe] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 9/11/2023 12:31:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [int] NOT NULL,
	[TenXe] [nvarchar](50) NOT NULL,
	[GhiChu] [text] NULL,
 CONSTRAINT [PK_Xe] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (1, N'MV01', 1, 1, CAST(230000 AS Decimal(18, 0)), CAST(N'2023-06-23' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (2, N'MV02', 5, 2, CAST(280000 AS Decimal(18, 0)), CAST(N'2023-06-10' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (3, N'MV05', 8, 2, CAST(900000 AS Decimal(18, 0)), CAST(N'2023-02-15' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (4, N'MV08', 2, 4, CAST(920000 AS Decimal(18, 0)), CAST(N'2023-04-01' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (5, N'MV03', 7, 1, CAST(100000 AS Decimal(18, 0)), CAST(N'2023-02-17' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (6, N'MV10', 3, 2, CAST(540000 AS Decimal(18, 0)), CAST(N'2023-06-19' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (7, N'MV21', 6, 3, CAST(300000 AS Decimal(18, 0)), CAST(N'2023-02-11' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (8, N'MV13', 12, 1, CAST(270000 AS Decimal(18, 0)), CAST(N'2023-02-16' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (9, N'MV11', 18, 2, CAST(260000 AS Decimal(18, 0)), CAST(N'2023-01-27' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (10, N'MV29', 10, 2, CAST(200000 AS Decimal(18, 0)), CAST(N'2023-01-15' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (11, N'MV09', 13, 1, CAST(130000 AS Decimal(18, 0)), CAST(N'2023-02-20' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (12, N'MV23', 11, 2, CAST(220000 AS Decimal(18, 0)), CAST(N'2023-05-19' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (13, N'MV05', 15, 8, CAST(3600000 AS Decimal(18, 0)), CAST(N'2023-05-19' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (14, N'MV31', 19, 5, CAST(2000000 AS Decimal(18, 0)), CAST(N'2023-04-26' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (15, N'MV05', 4, 12, CAST(5400000 AS Decimal(18, 0)), CAST(N'2023-02-23' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (16, N'MV16', 20, 4, CAST(480000 AS Decimal(18, 0)), CAST(N'2023-07-12' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (17, N'MV17', 17, 3, CAST(330000 AS Decimal(18, 0)), CAST(N'2023-08-01' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (18, N'MV02', 1, 6, CAST(1680000 AS Decimal(18, 0)), CAST(N'2023-09-01' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (19, N'MV30', 14, 2, CAST(320000 AS Decimal(18, 0)), CAST(N'2023-08-31' AS Date), NULL)
INSERT [dbo].[ChiTietVeXe] ([MaCTVX], [MaVe], [MaKH], [SoLuong], [ThanhTien], [NgayXuatVe], [GhiChu]) VALUES (20, N'MV23', 16, 5, CAST(550000 AS Decimal(18, 0)), CAST(N'2023-07-17' AS Date), NULL)
GO
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (1, 1, N'51B-273.39     ', 35, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (1, 2, N'51B-298.54     ', 45, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (1, 3, N'51B-274.23     ', 35, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (2, 1, N'51B-219.64     ', 45, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (2, 2, N'51B-234.75     ', 45, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (2, 3, N'51B-298.31     ', 45, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (3, 1, N'51B-235.61     ', 35, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (3, 2, N'51B-289.34     ', 35, NULL)
INSERT [dbo].[ChiTietXe] ([MaLoaiXe], [MaXe], [BienSoXe], [SoGhe], [GhiChu]) VALUES (3, 3, N'51B-237.98     ', 45, NULL)
GO
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C01', 1, CAST(N'23:00:00' AS Time), CAST(N'07:00:00' AS Time), 45, N'TX02', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C02', 3, CAST(N'08:00:00' AS Time), CAST(N'10:00:00' AS Time), 35, N'TX05', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C03', 5, CAST(N'07:00:00' AS Time), CAST(N'10:00:00' AS Time), 35, N'TX01', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C04', 7, CAST(N'20:00:00' AS Time), CAST(N'04:00:00' AS Time), 45, N'TX07', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C05', 9, CAST(N'04:00:00' AS Time), CAST(N'07:00:00' AS Time), 35, N'TX03', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C06', 11, CAST(N'19:00:00' AS Time), CAST(N'04:00:00' AS Time), 45, N'TX04', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C07', 13, CAST(N'03:00:00' AS Time), CAST(N'05:30:00' AS Time), 35, N'TX06', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C08', 15, CAST(N'04:00:00' AS Time), CAST(N'08:30:00' AS Time), 35, N'TX09', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C09', 17, CAST(N'03:00:00' AS Time), CAST(N'05:30:00' AS Time), 35, N'TX10', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C10', 19, CAST(N'04:00:00' AS Time), CAST(N'08:00:00' AS Time), 45, N'TX08', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C11', 21, CAST(N'05:00:00' AS Time), CAST(N'07:00:00' AS Time), 35, N'TX01', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C12', 23, CAST(N'23:00:00' AS Time), CAST(N'05:00:00' AS Time), 45, N'TX06', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C13', 25, CAST(N'13:00:00' AS Time), CAST(N'16:00:00' AS Time), 35, N'TX03', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C14', 27, CAST(N'23:00:00' AS Time), CAST(N'05:00:00' AS Time), 45, N'TX05', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C15', 29, CAST(N'10:00:00' AS Time), CAST(N'14:00:00' AS Time), 35, N'TX10', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C16', 2, CAST(N'23:00:00' AS Time), CAST(N'07:00:00' AS Time), 45, N'TX02', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C17', 4, CAST(N'05:00:00' AS Time), CAST(N'07:00:00' AS Time), 45, N'TX05', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C18', 6, CAST(N'04:00:00' AS Time), CAST(N'07:00:00' AS Time), 35, N'TX01', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C19', 8, CAST(N'20:00:00' AS Time), CAST(N'04:00:00' AS Time), 45, N'TX07', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C20', 10, CAST(N'13:00:00' AS Time), CAST(N'16:00:00' AS Time), 35, N'TX03', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C21', 12, CAST(N'19:00:00' AS Time), CAST(N'04:00:00' AS Time), 45, N'TX04', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C22', 14, CAST(N'05:00:00' AS Time), CAST(N'07:30:00' AS Time), 35, N'TX06', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C23', 16, CAST(N'04:00:00' AS Time), CAST(N'08:30:00' AS Time), 35, N'TX09', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C24', 18, CAST(N'06:00:00' AS Time), CAST(N'08:30:00' AS Time), 35, N'TX10', NULL)
INSERT [dbo].[ChuyenXe] ([MaChuyenXe], [MaTuyen], [GioKhoiHanh], [GioDen], [GheTrong], [MaTX], [GhiChu]) VALUES (N'C25', 20, CAST(N'05:00:00' AS Time), CAST(N'07:00:00' AS Time), 35, N'TX01', NULL)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (1, N'custom01', N'12345', N'Nguyễn Tuấn ', N'Anh', CAST(N'1999-02-06' AS Date), N'Nam', N'26 Nguyễn Kiệm, phường3, Q.Gò Vấp, TP.HCM', N'0939674521', N'tuananh01@gmail.com', N'083456237856', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (2, N'custom02', N'12345', N'Hoàng Thị Thu', N'Hương', CAST(N'2000-12-09' AS Date), N'Nữ', N'261 An Dương Vương, phường 3, Quận 5, TP.HCM', N'0783454567', N'huong1209@gmail.com', N'082347673210', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (3, N'custom02', N'12345', N'Trần Khánh', N'Linh', CAST(N'1998-01-25' AS Date), N'Nữ', N'49 Hoàng Diệu, phường 10, Q.Phú Nhuận, TP.HCM', N'0939565532', N'linhtran98@gmail.com', N'082182353174', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (4, N'custom04', N'12345', N'Võ Hoàng ', N'Quân', CAST(N'1990-12-23' AS Date), N'Nam', N'256A CMT8, P.10, Q.3, TP.HCM', N'0784356667', N'vhquan12@gmail.com', N'083452341986', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (5, N'custom05', N'12345', N'Nguyễn Duy', N'Linh', CAST(N'1995-05-07' AS Date), N'Nam', N'289 Nguyễn Đình Chiểu, Q.3, TP.HCM', N'0793434582', N'linhng123@gmail.com', N'084654622311', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (6, N'custom06', N'12345', N'Nguyễn Kim Thảo', N'Vân', CAST(N'1986-03-27' AS Date), N'Nữ', N'Nguyễn Cư Trinh, Q.1, TP.HCM', N'0947878521', N'thvan27@gmail.com', N'083546546234', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (7, N'custom07', N'12345', N'Phan Dĩnh', N'Tuệ', CAST(N'1985-11-21' AS Date), N'Nữ', N'110K Đinh Tiên Hoàng, P.1, Q.Bình Thạnh, TP.HCM', N'0783356653', N'tuephan1@gmail.com', N'082654634126', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (8, N'custom08', N'12345', N'Nguyễn Anh', N'Đức', CAST(N'1990-06-07' AS Date), N'Nam', N'769 Trần Xuân Soạn, Q.7, TP.HCM ', N'0985252671', N'ducnguyen76@gmail.com', N'082735675223', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (9, N'custom09', N'12345', N'Tạ Công', N'Hòa', CAST(N'1981-10-29' AS Date), N'Nam', N'123 Lạc Long Quân, P.3, Q.11, TP.HCM', N'0736555621', N'tahoa10@gmail.com', N'084587743972', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (10, N'custom10', N'12345', N'Nguyễn Thị Dị', N'Thảo', CAST(N'1979-07-23' AS Date), N'Nữ', N'239/34 Tôn Đức Thắng, P.Long Thạnh, Tỉnh An Giang', N'0912324536', N'thaonguyen6@gmail.com', N'083445467878', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (11, N'custom11', N'12345', N'Lê Trung', N'Đông', CAST(N'1972-02-19' AS Date), N'Nam', N'360A Trần Phú, P.Long Châu, T.An Giang', N'0924364568', N'dongle123@gmail.com', N'084552467721', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (12, N'custom12', N'12345', N'Nguyễn Ngọc', N'Đạt', CAST(N'1979-09-01' AS Date), N'Nam', N'12 tổ 6, KP2, P.Bình Đa, Biên Hòa - Đồng Nai', N'0742465123', NULL, N'084476858486', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (13, N'custom13', N'12345', N'Nguyễn Thị', N'Lý', CAST(N'1982-04-11' AS Date), N'Nữ', N'Tỉnh Kiên Giang', N'0935571413', NULL, N'085624771922', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (14, N'custom14', N'12345', N'Phạm Thị Kim', N'Ngọc', CAST(N'1975-11-23' AS Date), N'Nữ', N'Tổ 5, Xã Mỹ Phong, TP.Mỹ Tho, Tiền Giang', N'0735268784', NULL, N'083454678997', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (15, N'custom15', N'12345', N'Hoàng Ngọc', N'Nghiên', CAST(N'2002-05-14' AS Date), N'Nữ', N'2 Trần Quốc Toản, P.8, TP.Đà Lạt, Lâm Đồng', N'0938657211', N'nghienhoang02@gmail,com', N'082367557488', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (16, N'custom16', N'12345', N'Nguyễn Thiên ', N'Phúc', CAST(N'1997-09-26' AS Date), N'Nam', N'19 Lê Công Nhân, P.5, TP.Cà Mau', N'0873426488', N'thienphucng97@gmail.com', N'082657623563', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (17, N'custom17', N'12345', N'Trương Hoàng Thảo', N'Nhi', CAST(N'2000-03-06' AS Date), N'Nữ', N'28 Đường 3 Tháng 2, P.1, Vĩnh long', N'0937652811', N'thtnhi603@gmail.com', N'082467477551', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (18, N'custom18', N'12345', N'Phạm Ngọc', N'Vũ', CAST(N'1992-12-10' AS Date), N'Nam', N'195 Hai Bà Trưng, Q.Ninh Kiều, Cần Thơ', N'0736722932', N'vupham12@gmail.com', N'082568192934', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (19, N'custom19', N'12345', N'Trần Trương Thanh', N'Trúc', CAST(N'2001-01-25' AS Date), N'Nữ', N'Số 12 Hải Thượng Lãn Ông, Bình Hưng, TP.Phan Thiết', N'0377348119', N'thanhtruc25@gmail.com', N'089223171882', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (20, N'custom20', N'12345', N'Lê Ngọc Kim', N'Ngân', CAST(N'1994-02-09' AS Date), N'Nữ', N'183 Phú Lợi, P.2, TP.Sóc Trăng', N'0792332560', N'nganle29@gmail.com', N'085629134278', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenDangNhap], [MatKhau], [HoKH], [TenKH], [NgaySinh], [GioiTinh], [DiaChi], [SDT], [Email], [CCCD], [ID], [GhiChu]) VALUES (21, N'custom21', N'12345', N'nguyen', N'lan', CAST(N'1997-09-10' AS Date), N'Nam', N'123 Nguyen Kiem, Go Vap', N'0939786225', N'lan123@gmail.com', N'082307028764', NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[LoaiXeKhach] ([MaLoaiXe], [TenLoaiXe], [GhiChu]) VALUES (1, N'Xe khách ghế ngồi', NULL)
INSERT [dbo].[LoaiXeKhach] ([MaLoaiXe], [TenLoaiXe], [GhiChu]) VALUES (2, N'Xe khách giường nằm', N'')
INSERT [dbo].[LoaiXeKhach] ([MaLoaiXe], [TenLoaiXe], [GhiChu]) VALUES (3, N'Xe khách Limousine', NULL)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'NV01', N'Nguyễn Diệp', N'Anh', CAST(N'1999-10-06' AS Date), N'Nữ', N'67A Nguyễn Văn Trỗi, P.8, Q.Phú Nhuận, TP.HCM', N'083256256865', N'0908854532', N'anhnd@gmail.com', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'NV02', N'Trần Nam', N'Anh', CAST(N'1989-09-18' AS Date), N'Nam', N'12 Phan Huy Ích, P.15, Q.Gò Vấp, TP.HCM', N'083532564541', N'0962342550', N'anhnt@gmail.com', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'NV03', N'Hoàng Ngọc', N'Bách', CAST(N'2001-08-12' AS Date), N'Nam', N'145 Nguyễn Chính Sắt, P.13, Q.Tân Bình, TP.HCM', N'089645427211', N'0834082001', N'bachnh@gmail.com', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'NV04', N'Nguyễn Thị Kim', N'Dung', CAST(N'1988-08-22' AS Date), N'Nữ', N'198/12 Ngô Gia Tự, Q.10, TP.HCM', N'084257507903', N'0942681193', N'phuonght@gmail.com', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'NV05', N'Đinh Quốc', N'Trung', CAST(N'1993-06-29' AS Date), N'Nam', N'62/3B Đinh Bộ Lĩnh, P.26, Q.Bình Thạnh, TP.HCM', N'081003578477', N'0957928642', N'trungqd@gmail.com', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenNV], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'NV06', N'nguyen van', N'hao', CAST(N'1990-09-10' AS Date), N'nam', N'123 abc', N'082305024367', N'0939678145', N'haonv@gmail.com', N'string')
GO
SET IDENTITY_INSERT [dbo].[QuyenThamChieu] ON 

INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (1, N'custom01', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (2, N'custom02', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (3, N'custom03', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (4, N'custom04', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (5, N'custom05', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (6, N'custom06', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (7, N'custom07', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (8, N'custom08', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (9, N'custom09', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (10, N'custom10', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (11, N'custom11', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (12, N'custom12', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (13, N'custom13', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (14, N'custom14', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (15, N'custom15', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (16, N'custom16', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (17, N'custom17', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (18, N'custom18', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (19, N'custom19', N'12345')
INSERT [dbo].[QuyenThamChieu] ([ID], [TenDangNhap], [MatKhau]) VALUES (20, N'custom20', N'12345')
SET IDENTITY_INSERT [dbo].[QuyenThamChieu] OFF
GO
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX01', N'Cao Ngọc', N'Phú                 ', CAST(N'1981-12-15' AS Date), N'Nam', N'172/2 Nguyễn Kiệm, P.3, Q.Gò Vấp, TP.HCM', N'081276477545', N'0934032321', N'phucn@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX02', N'Nguyễn Tường Duy', N'Minh                ', CAST(N'1985-04-18' AS Date), N'Nam', N'22B Nguyễn Gia Trí, P.25, Q.Bình Thạnh, TP.HCM', N'082487100743', N'0973543128', N'minhntd@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX03', N'Trần Văn', N'Lĩnh                ', CAST(N'1978-06-28' AS Date), N'Nam', N'190 Hồ Văn Huê, P.9, Q.Phú Nhuận, TP.HCM', N'083543463709', N'0835521180', N'linhtv@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX04', N'Lê Trần Trọng', N'Nghĩa               ', CAST(N'1980-11-23' AS Date), N'Nam', N'67A Minh Phụng, P.2, Q.11, TP.HCM', N'085237441821', N'0932789001', N'nghiantt@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX05', N'Hoàng Thiên', N'Long                ', CAST(N'1979-03-17' AS Date), N'Nam', N'31/7B Ung Văn Khiêm, P.25, Q.Bình Thạnh, TP.HCM', N'081665345790', N'0847981012', N'longht@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX06', N'Trịnh Tiến', N'Đạt                 ', CAST(N'1985-09-10' AS Date), N'Nam', N'111/52/6 Hùng Vương, P.13, Q.6, TP.HCM', N'089235651186', N'0932219875', N'dattt@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX07', N'Ngô Hoàng', N'Nam                 ', CAST(N'1975-07-29' AS Date), N'Nam', N'267/34/2B Nguyễn Tất Thành, P.18, Q.4, TP.HCM', N'089266546546', N'0926752167', N'namnh@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX08', N'Tạ Ngọc', N'Liêm                ', CAST(N'1982-05-26' AS Date), N'Nam', N'67 Phạm Văn Hai, P.3, Q.Tân Bình, TP.HCM', N'082173582801', N'0843881687', N'liemtn@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX09', N'Lâm Văn', N'Triết               ', CAST(N'1983-02-11' AS Date), N'Nam', N'87 Cộng Hòa, P.12, Q.Tân Bình, TP.HCM', N'081564267926', N'0938781659', N'trietlv@gmail.com', NULL)
INSERT [dbo].[TaiXe] ([MaTX], [HoTX], [TenTX], [NgaySinh], [GioiTinh], [DiaChi], [CCCD], [SDT], [Email], [GhiChu]) VALUES (N'TX10', N'Trần Duy', N'Nhất                ', CAST(N'1981-01-20' AS Date), N'Nam', N'176 Hậu Giang, P.5, Q.6, TP.HCM', N'089162656512', N'0916724539', N'nhattd@gmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[TuyenXe] ON 

INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (1, N'Sài Gòn - Đà Lạt', N'Sài Gòn', N'Đà Lạt', CAST(450000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (2, N'Đà Lạt - Sài Gòn', N'Đà Lạt', N'Sài Gòn', CAST(450000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (3, N'Sài Gòn - Tiền Giang', N'Sài Gòn', N'Tiền Giang', CAST(100000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (4, N'Tiền Giang - Sài Gòn', N'Tiền Giang', N'Sài Gòn', CAST(100000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (5, N'Sài Gòn - Tây Ninh', N'Sài Gòn', N'Tây Ninh', CAST(100000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (6, N'Tây Ninh - Sài Gòn', N'Tây Ninh', N'Sài Gòn', CAST(100000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (7, N'Sài Gòn - Nha Trang', N'Sài Gòn', N'Nha Trang', CAST(400000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (8, N'Nha Trang - Sài Gòn', N'Nha Trang', N'Sài Gòn', CAST(400000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (9, N'Sài Gòn - Bình Thuận', N'Sài Gòn', N'Bình Thuận ', CAST(120000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (10, N'Bình Thuận - Sài Gòn', N'Bình Thuận ', N'Sài Gòn', CAST(120000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (11, N'Sài Gòn - Cà Mau', N'Sài Gòn', N'Cà Mau', CAST(230000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (12, N'Cà Mau - Sài Gòn', N'Cà Mau', N'Sài Gòn', CAST(230000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (13, N'Sài Gòn - Vũng Tàu', N'Sài Gòn', N'Vũng Tàu', CAST(190000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (14, N'Vũng Tàu - Sài Gòn', N'Vũng Tàu', N'Sài Gòn', CAST(190000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (15, N'Sài Gòn - Kiên Giang', N'Sài Gòn', N'Kiên Giang', CAST(270000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (16, N'Kiên Giang - Sài Gòn', N'Kiên Giang', N'Sài Gòn', CAST(270000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (17, N'Sài Gòn - Vĩnh Long', N'Sài Gòn', N'Vĩnh Long', CAST(110000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (18, N'Vĩnh Long - Sài Gòn', N'Vĩnh Long', N'Sài Gòn', CAST(110000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (19, N'Sài Gòn - Hậu Giang', N'Sài Gòn', N'Hậu Giang', CAST(130000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (20, N'Hậu Giang - Sài Gòn', N'Hậu Giang', N'Sài Gòn', CAST(130000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (21, N'Sài Gòn - Bến Tre', N'Sài Gòn', N'Bến Tre', CAST(100000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (22, N'Bến Tre - Sài Gòn ', N'Bến Tre', N'Sài Gòn ', CAST(100000 AS Decimal(18, 0)), 3, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (23, N'Sài Gòn - An Giang', N'Sài Gòn', N'An Giang', CAST(140000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (24, N'An Giang - Sài Gòn', N'An Giang', N'Sài Gòn', CAST(140000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (25, N'Sài Gòn - Cần Thơ', N'Sài Gòn', N'Cần Thơ', CAST(120000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (26, N'Cần Thơ - Sài Gòn', N'Cần Thơ', N'Sài Gòn', CAST(120000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (27, N'Sài Gòn - Bạc Liêu', N'Sài Gòn', N'Bạc Liêu', CAST(280000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (28, N'Bạc Liêu - Sài Gòn', N'Bạc Liêu', N'Sài Gòn', CAST(280000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (29, N'Sài Gòn - Sóc Trăng', N'Sài Gòn', N'Sóc Trăng', CAST(160000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (30, N'Sóc Trăng - Sài Gòn', N'Sóc Trăng', N'Sài Gòn', CAST(160000 AS Decimal(18, 0)), 2, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (31, N'Tiền Giang - Tây Ninh', N'Tiền Giang', N'Tây Ninh', CAST(200000 AS Decimal(18, 0)), 1, NULL)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemKhoiHanh], [DiemDen], [BangGia], [MaXe], [GhiChu]) VALUES (32, N'A - B', N'A', N'B', CAST(150000 AS Decimal(18, 0)), 3, NULL)
SET IDENTITY_INSERT [dbo].[TuyenXe] OFF
GO
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV01', N'NV01', N'C06', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV02', N'NV02', N'C12', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV03', N'NV03', N'C11', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV04', N'NV01', N'C07', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV05', N'NV02', N'C01', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV06', N'NV02', N'C20', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV07', N'NV01', N'C18', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV08', N'NV01', N'C06', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV09', N'NV02', N'C10', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV10', N'NV03', N'C08', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV11', N'NV01', N'C25', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV12', N'NV01', N'C21', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV13', N'NV03', N'C23', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV14', N'NV03', N'C22', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV15', N'NV01', N'C16', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV16', N'NV01', N'C13', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV17', N'NV03', N'C09', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV18', N'NV01', N'C02', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV19', N'NV03', N'C03', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV20', N'NV01', N'C05', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV21', N'NV01', N'C11', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV22', N'NV03', N'C06', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV23', N'NV03', N'C09', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV24', N'NV01', N'C19', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV25', N'NV01', N'C07', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV26', N'NV01', N'C23', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV27', N'NV03', N'C22', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV28', N'NV03', N'C20', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV29', N'NV03', N'C17', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV30', N'NV03', N'C15', NULL)
INSERT [dbo].[VeXe] ([MaVe], [MaNV], [MaChuyenXe], [GhiChu]) VALUES (N'MV31', N'NV01', N'C04', NULL)
GO
INSERT [dbo].[Xe] ([MaXe], [TenXe], [GhiChu]) VALUES (1, N'Hyundai Universe', NULL)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [GhiChu]) VALUES (2, N'Thaco', NULL)
INSERT [dbo].[Xe] ([MaXe], [TenXe], [GhiChu]) VALUES (3, N'Fuso', NULL)
GO
ALTER TABLE [dbo].[ChiTietVeXe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietVeXe_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietVeXe] CHECK CONSTRAINT [FK_ChiTietVeXe_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietVeXe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietVeXe_VeXe] FOREIGN KEY([MaVe])
REFERENCES [dbo].[VeXe] ([MaVe])
GO
ALTER TABLE [dbo].[ChiTietVeXe] CHECK CONSTRAINT [FK_ChiTietVeXe_VeXe]
GO
ALTER TABLE [dbo].[ChiTietXe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietXe_LoaiXeKhach] FOREIGN KEY([MaLoaiXe])
REFERENCES [dbo].[LoaiXeKhach] ([MaLoaiXe])
GO
ALTER TABLE [dbo].[ChiTietXe] CHECK CONSTRAINT [FK_ChiTietXe_LoaiXeKhach]
GO
ALTER TABLE [dbo].[ChiTietXe]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietXe_Xe] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[ChiTietXe] CHECK CONSTRAINT [FK_ChiTietXe_Xe]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenXe_TaiXe] FOREIGN KEY([MaTX])
REFERENCES [dbo].[TaiXe] ([MaTX])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_ChuyenXe_TaiXe]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenXe_TuyenXe] FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_ChuyenXe_TuyenXe]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_QuyenThamChieu] FOREIGN KEY([ID])
REFERENCES [dbo].[QuyenThamChieu] ([ID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_QuyenThamChieu]
GO
ALTER TABLE [dbo].[TuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_TuyenXe_Xe] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[TuyenXe] CHECK CONSTRAINT [FK_TuyenXe_Xe]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_ChuyenXe] FOREIGN KEY([MaChuyenXe])
REFERENCES [dbo].[ChuyenXe] ([MaChuyenXe])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_ChuyenXe]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_NhanVien]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Chi Tiết Vé Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietVeXe', @level2type=N'COLUMN',@level2name=N'MaCTVX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Vé' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietVeXe', @level2type=N'COLUMN',@level2name=N'MaVe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Khách Hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietVeXe', @level2type=N'COLUMN',@level2name=N'MaKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số Lượng ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietVeXe', @level2type=N'COLUMN',@level2name=N'SoLuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thành Tiền' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietVeXe', @level2type=N'COLUMN',@level2name=N'ThanhTien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GhiChu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietVeXe', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Loại Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietXe', @level2type=N'COLUMN',@level2name=N'MaLoaiXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietXe', @level2type=N'COLUMN',@level2name=N'MaXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Biển Số Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietXe', @level2type=N'COLUMN',@level2name=N'BienSoXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số Ghế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietXe', @level2type=N'COLUMN',@level2name=N'SoGhe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChiTietXe', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Chuyến Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenXe', @level2type=N'COLUMN',@level2name=N'MaChuyenXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Tuyến' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenXe', @level2type=N'COLUMN',@level2name=N'MaTuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giờ Khởi Hành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenXe', @level2type=N'COLUMN',@level2name=N'GioKhoiHanh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giờ Đến' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenXe', @level2type=N'COLUMN',@level2name=N'GioDen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghế Trống' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenXe', @level2type=N'COLUMN',@level2name=N'GheTrong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Tài Xế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenXe', @level2type=N'COLUMN',@level2name=N'MaTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ChuyenXe', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Khách Hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'MaKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên Đăng Nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'TenDangNhap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật Khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'MatKhau'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ Khách Hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'HoKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên Khách Hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'TenKH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày Sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'NgaySinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới Tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'GioiTinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa Chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'DiaChi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số Điện Thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'SDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn Cước Công Dân' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'CCCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KhachHang', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Loại Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiXeKhach', @level2type=N'COLUMN',@level2name=N'MaLoaiXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên Loại Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiXeKhach', @level2type=N'COLUMN',@level2name=N'TenLoaiXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LoaiXeKhach', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Tài Xế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'MaTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ Tài Xế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'HoTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên Tài Xế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'TenTX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày Sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'NgaySinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới Tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'GioiTinh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa Chỉ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'DiaChi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Căn Cước Công Dân' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'CCCD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số Điện Thoại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'SDT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TaiXe', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Tuyến' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TuyenXe', @level2type=N'COLUMN',@level2name=N'MaTuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên Tuyến' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TuyenXe', @level2type=N'COLUMN',@level2name=N'TenTuyen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Điểm Khởi Hành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TuyenXe', @level2type=N'COLUMN',@level2name=N'DiemKhoiHanh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Điểm Đến' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TuyenXe', @level2type=N'COLUMN',@level2name=N'DiemDen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bảng Giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TuyenXe', @level2type=N'COLUMN',@level2name=N'BangGia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TuyenXe', @level2type=N'COLUMN',@level2name=N'MaXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TuyenXe', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Vé' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VeXe', @level2type=N'COLUMN',@level2name=N'MaVe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Nhân Viên Bán Vé' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VeXe', @level2type=N'COLUMN',@level2name=N'MaNV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Chuyến Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VeXe', @level2type=N'COLUMN',@level2name=N'MaChuyenXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VeXe', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Xe', @level2type=N'COLUMN',@level2name=N'MaXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên Xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Xe', @level2type=N'COLUMN',@level2name=N'TenXe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ghi Chú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Xe', @level2type=N'COLUMN',@level2name=N'GhiChu'
GO

Create Proc spDSKHChuaDatVe
As
Begin
	select*
	from KhachHang
	where MaKH not in ( select distinct MaKH from ChiTietVeXe)
End
exec spDSKHChuaDatVe