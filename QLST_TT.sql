drop database QLST_TT
create database QLST_TT
USE QLST_TT
GO

SET ANSI_NULLS ON
GO
select * from chitietdonhang
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[chitietdonhang]
(
	maphieuxuat int IDENTITY(1,1) NOT NULL,
	sanphamban nvarchar(500) NULL,
	ngayban nvarchar(30) NULL,
	thanhtien int NULL,
	nguoiban nvarchar(50) NULL,
	username nvarchar(50) NOT NULL,
	CONSTRAINT FK_tk FOREIGN KEY(username) REFERENCES taikhoan(username),
 CONSTRAINT PK_chitietdonhang PRIMARY KEY CLUSTERED 
(
	maphieuxuat ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap]
(
	mancc int IDENTITY(1,1) NOT NULL,
	tenncc nvarchar(50) NULL,
	diachi nvarchar(50) NULL,
	sdt nvarchar(50) NULL,
	congno int NULL,
 CONSTRAINT PK_nhacungcap PRIMARY KEY CLUSTERED 
(
	mancc ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[sanpham]    Script Date: 8/30/2022 11:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	masp int IDENTITY(1000,1) NOT NULL,
	tensp nvarchar(50) NULL,
	mancc int NULL,
	gianhap int NULL,
	giaban int NULL,
	solg int NULL,
	hsd date NULL,
	noisx nvarchar(50) NOT NULL,
	donvitinh nvarchar(50) NULL,
	nguoinhap nvarchar(50) NULL,
	username nvarchar(50) NOT NULL,
	CONSTRAINT FK_nv FOREIGN KEY(username) REFERENCES taikhoan(username),
	CONSTRAINT Fk_ncc FOREIGN KEY(mancc) REFERENCES nhacungcap(mancc),
	CONSTRAINT PK_sanpham PRIMARY KEY CLUSTERED 

(
	masp ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan]
(
	username nvarchar(50) NOT NULL,
	[password] nvarchar(50) NULL,
	fullname nvarchar(50) NULL,
	datecreate nvarchar(25) NULL,
	isAdmin int NULL,
	
PRIMARY KEY CLUSTERED 
(
	username ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[chitietdonhang] ON 

INSERT [dbo].[chitietdonhang] (maphieuxuat, sanphamban, ngayban, thanhtien, nguoiban,username) VALUES (9, N'Bơ Trường An : 1, Bột giặt OMO: 2, Khăn giấy : 2, ', N'2022-44-23 10:44:05 PM', 175000, N'Mai Nguyễn Phước Yến (Nhân viên)','staff')
INSERT [dbo].[chitietdonhang] (maphieuxuat, sanphamban, ngayban, thanhtien, nguoiban,username) VALUES (10, N'Gạo Đài Loan : 2,  Sữa Đặc : 1,  Cocacola : 5,  ', N'2022-22-24 08:22:31 PM', 970000, N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[chitietdonhang] (maphieuxuat, sanphamban, ngayban, thanhtien, nguoiban,username) VALUES (11, N'Pepsi : 5,  Mỳ 3 miền : 4,  Kim Chi : 3,  ', N'2022-18-26 10:18:08 AM', 642600, N'Mai Nguyễn Phước Yến (Nhân viên)','staff')
INSERT [dbo].[chitietdonhang] (maphieuxuat, sanphamban, ngayban, thanhtien, nguoiban,username) VALUES (12, N'Cocacola : 1,  Muối tôm Tây Ninh : 1,  Cocacola : 1,  ', N'2022-05-30 09:05:14 PM', 570000, N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[chitietdonhang] (maphieuxuat, sanphamban, ngayban, thanhtien, nguoiban,username) VALUES (13, N'Kim Chi : 1,  Cocacola : 1,  Xúc xích tiệt trùng : 1,  ', N'2022-08-30 09:08:18 PM', 340000, N'Mai Nguyễn Phước Yến (Nhân viên)','staff')
INSERT [dbo].[chitietdonhang] (maphieuxuat, sanphamban, ngayban, thanhtien, nguoiban,username) VALUES (14, N'Kem Đánh Răng : 5,  Bột giặt OMO : 1,  Nước rửa chén: 3,  Bot ngot : 2,  ', N'2022-17-30 09:17:57 PM', 315000, N'Mai Nguyễn Phước Yến (Nhân viên)','staff')
INSERT [dbo].[chitietdonhang] (maphieuxuat, sanphamban, ngayban, thanhtien, nguoiban,username) VALUES (15, N'Cocacola : 3, Bơ Trường An : 2,  Gạo Đài Loan : 1,  ', N'2022-08-30 11:08:17 PM', 1240000, N'Mai Nguyễn Phước Yến (Nhân viên)','staff')
SET IDENTITY_INSERT [dbo].[chitietdonhang] OFF

SET IDENTITY_INSERT [dbo].[nhacungcap] ON 
INSERT [dbo].[nhacungcap] (mancc, tenncc, diachi, sdt, congno) VALUES (1, N'Công Ty TNHH Long Phú', N'Hà Nội', N'01655888622', 0)
INSERT [dbo].[nhacungcap] (mancc, tenncc, diachi, sdt, congno) VALUES (2, N'Công Ty TNHH Pepsi', N'Hà Nội', N'00001356565', 0)
INSERT [dbo].[nhacungcap] (mancc, tenncc, diachi, sdt, congno) VALUES (3, N'Công Ty TNHH Gia Dụng', N'Hải Phòng', N'05985231023', 0)
INSERT [dbo].[nhacungcap] (mancc, tenncc, diachi, sdt, congno) VALUES (4, N'Công Ty TNHH An Phát', N'HCM', N'123456789', 0)
INSERT [dbo].[nhacungcap] (mancc, tenncc, diachi, sdt, congno) VALUES (5, N'Công Ty TNHH Hòa Thịnh', N'HCM', N'0934545', 0)
INSERT [dbo].[nhacungcap] (mancc, tenncc, diachi, sdt, congno) VALUES (6, N'Công Ty TNHH Cocacola', N'HCM', N'0924568245', 0)
INSERT [dbo].[nhacungcap] (mancc, tenncc, diachi, sdt, congno) VALUES (7, N'Công Ty TNHH Phước Lộc', N'HCM', N'0928655654', 0)
SET IDENTITY_INSERT [dbo].[nhacungcap] OFF

SET IDENTITY_INSERT [dbo].[sanpham] ON 
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1000, N'Bơ Trường An', 1, 300000, 400000, 6, CAST(N'2025-01-01' AS Date), N'Hải Phòng', N'Hộp', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1001, N'Bột giặt', 3, 150000, 20000, 26, CAST(N'2022-07-21' AS Date), N'Khánh Hòa', N'Bịch', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1002, N'Gạo Đài Loan', 3, 50000, 60000, 35, CAST(N'2022-08-20' AS Date), N'HCM', N'Bịch', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1003, N'Pepsi', 2, 20000, 25000, 41, CAST(N'2022-08-20' AS Date), N'HCM', N'Lon', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1004, N'Cocacola', 6, 35000, 45000, 59, CAST(N'2023-11-23' AS Date), N'Bình Dương', N'Chai', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1005, N'Bột giặt OMO', 1, 170000, 250000, 3, CAST(N'2022-08-20' AS Date), N'HCM', N'Bịch', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1007, N'Kim Chi', 7, 50000, 70000, 94, CAST(N'2022-08-26' AS Date), N'Seoul', N'Bịch', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1008, N'Xúc xích tiệt trùng', 3, 20000, 30000, 36, CAST(N'2022-09-28' AS Date), N'Hà Nội', N'Bịch', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1009, N'Kem đánh răng', 1, 30000, 40000, 87, CAST(N'2022-09-29' AS Date), N'HCM', N'Tip', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1010, N'Sữa Đặc', 5, 50000, 70000, 85, CAST(N'2022-08-30' AS Date), N'Bình Định', N'Tip', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1007, N'Muối tôm Tây Ninh', 4, 50000, 70000, 94, CAST(N'2022-08-26' AS Date), N'Tây Ninh', N'Hủ', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1008, N'Nước rửa chén', 3, 20000, 30000, 36, CAST(N'2022-09-28' AS Date), N'Quảng Trị', N'Chai', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1009, N'Khăn giấy', 4, 30000, 40000, 87, CAST(N'2022-09-29' AS Date), N'HCM', N'Bịch', N'Lê Chí Huân (Quản trị)','admin')
INSERT [dbo].[sanpham] (masp, tensp, mancc, gianhap, giaban, solg, hsd, noisx, donvitinh, nguoinhap,username) VALUES (1010, N'Mỳ 3 miềm', 7, 50000, 70000, 85, CAST(N'2022-08-30' AS Date), N'Hà Nội', N'Thùng', N'Lê Chí Huân (Quản trị)','admin')
SET IDENTITY_INSERT [dbo].[sanpham] OFF

INSERT [dbo].[taikhoan] (username, [password], fullname, datecreate, isAdmin) VALUES (N'admin', N'123', N'Lê Chí Huân', N'2022-08-21 20:16:04.51000', 0)
INSERT [dbo].[taikhoan] (username, [password], fullname, datecreate, isAdmin) VALUES (N'staff', N'123', N'Mai Nguyễn Phước Yến', N'2022-08-21 20:16:36.94700', 1)
select * from taikhoan
select * from sanpham
select * from nhacungcap
select * from chitietdonhang
