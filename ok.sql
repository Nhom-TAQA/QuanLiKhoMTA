USE [quanlikhoMTA]
GO
/****** Object:  UserDefinedFunction [dbo].[SoLuongKhoPR]    Script Date: 10/25/2020 7:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SoLuongKhoPR]( 
	@MaLoHang varchar(50)
)
returns int 
AS
BEGIN
	DEclare @mta int
	SELECT @mta =SoLuong FROM  KhoHang  Where MaLoHang=@MaLoHang 
	
	return 1;
END
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 10/25/2020 7:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [varchar](50) NOT NULL,
	[TenHH] [nvarchar](500) NULL,
	[GiaSP] [int] NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 10/25/2020 7:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[MaLoHang] [varchar](50) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_KhoHang] PRIMARY KEY CLUSTERED 
(
	[MaLoHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoHang]    Script Date: 10/25/2020 7:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoHang](
	[MaLoHang] [varchar](50) NOT NULL,
	[MaHH] [varchar](50) NULL,
	[NSX] [date] NULL,
	[HSD] [date] NULL,
 CONSTRAINT [PK_LoHang] PRIMARY KEY CLUSTERED 
(
	[MaLoHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 10/25/2020 7:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaLoHang] [varchar](50) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaLoHang] ASC,
	[NgayNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 10/25/2020 7:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaLoHang] [varchar](50) NOT NULL,
	[NgayXuat] [date] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[MaLoHang] ASC,
	[NgayXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/25/2020 7:48:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[UserName] [varchar](50) NOT NULL,
	[PassWord] [varchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaSP]) VALUES (N'HH0001', N'Xà phòng', 10000)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaSP]) VALUES (N'HH0002', N'kem đánh răng', 6000)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaSP]) VALUES (N'HH0003', N'Bàn chải đánh răng ', 25000)
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaSP]) VALUES (N'HH0004', N'Dầu rửa bát', 20000)
GO
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000001', 40)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000002', 40)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000003', 45)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000004', 30)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000005', 20)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000006', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000007', 40)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000008', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000009', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000010', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000011', 70)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000012', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000013', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000014', 70)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000015', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000016', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000017', 60)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000018', 70)
INSERT [dbo].[KhoHang] ([MaLoHang], [SoLuong]) VALUES (N'ML000019', 70)
GO
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000001', N'HH0001', CAST(N'2020-12-21' AS Date), CAST(N'2020-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000002', N'HH0002', CAST(N'2020-12-21' AS Date), CAST(N'2020-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000003', N'HH0003', CAST(N'2020-12-21' AS Date), CAST(N'2020-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000004', N'HH0001', CAST(N'2020-12-21' AS Date), CAST(N'2020-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000005', N'HH0001', CAST(N'2020-12-21' AS Date), CAST(N'2020-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000006', N'HH0001', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000007', N'HH0002', CAST(N'2020-05-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000008', N'HH0003', CAST(N'2020-05-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000009', N'HH0003', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000010', N'HH0004', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000011', N'HH0004', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000012', N'HH0003', CAST(N'2020-06-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000013', N'HH0004', CAST(N'2020-06-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000014', N'HH0002', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000015', N'HH0003', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000016', N'HH0003', CAST(N'2020-06-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000017', N'HH0004', CAST(N'2020-06-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000018', N'HH0002', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML000019', N'HH0002', CAST(N'2020-12-21' AS Date), CAST(N'2022-12-21' AS Date))
INSERT [dbo].[LoHang] ([MaLoHang], [MaHH], [NSX], [HSD]) VALUES (N'ML00003', N'HH0001', CAST(N'2020-12-21' AS Date), CAST(N'2020-12-21' AS Date))
GO
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000001', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000002', CAST(N'2020-12-10' AS Date), 50)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000003', CAST(N'2020-12-01' AS Date), 25)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000004', CAST(N'2020-12-01' AS Date), 30)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000005', CAST(N'2020-11-15' AS Date), 20)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000006', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000007', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000008', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000009', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000010', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000011', CAST(N'2020-12-10' AS Date), 70)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000012', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000013', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000014', CAST(N'2020-12-10' AS Date), 70)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000015', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000016', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000017', CAST(N'2020-12-10' AS Date), 60)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000018', CAST(N'2020-12-10' AS Date), 70)
INSERT [dbo].[PhieuNhap] ([MaLoHang], [NgayNhap], [SoLuong]) VALUES (N'ML000019', CAST(N'2020-12-10' AS Date), 70)
GO
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000001', CAST(N'2020-10-11' AS Date), 10)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000001', CAST(N'2020-10-12' AS Date), 30)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000001', CAST(N'2021-12-21' AS Date), 1)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000002', CAST(N'2020-10-12' AS Date), 20)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000002', CAST(N'2021-12-05' AS Date), 20)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000002', CAST(N'2022-12-21' AS Date), 2)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000003', CAST(N'2021-12-21' AS Date), 5)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000003', CAST(N'2022-12-21' AS Date), 2)
INSERT [dbo].[PhieuXuat] ([MaLoHang], [NgayXuat], [SoLuong]) VALUES (N'ML000007', CAST(N'2021-12-05' AS Date), 20)
GO
ALTER TABLE [dbo].[LoHang]  WITH CHECK ADD  CONSTRAINT [FK_LoHang_HangHoa] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[LoHang] CHECK CONSTRAINT [FK_LoHang_HangHoa]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_LoHang] FOREIGN KEY([MaLoHang])
REFERENCES [dbo].[LoHang] ([MaLoHang])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_LoHang]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_LoHang] FOREIGN KEY([MaLoHang])
REFERENCES [dbo].[LoHang] ([MaLoHang])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_LoHang]
GO
