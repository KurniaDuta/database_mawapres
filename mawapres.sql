USE [pbl_prestasi]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] NOT NULL,
	[nama] [varchar](255) NOT NULL,
	[role] [int] NOT NULL,
	[nip] [varchar](20) NOT NULL,
	[password] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_nip] UNIQUE NONCLUSTERED 
(
	[nip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dospem]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dospem](
	[nip] [varchar](20) NOT NULL,
	[nama] [varchar](255) NOT NULL,
	[id_dospem] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dospem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unik_dospem] UNIQUE NONCLUSTERED 
(
	[nip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dospem_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dospem_prestasi](
	[id_prestasi] [int] NOT NULL,
	[id_dospem] [int] NOT NULL,
	[id_peran_dospem] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prestasi] ASC,
	[id_dospem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jenisKompetisi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jenisKompetisi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[juara]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[juara](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mahasiswa]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mahasiswa](
	[nama] [varchar](255) NOT NULL,
	[angkatan] [varchar](6) NOT NULL,
	[prodi_id] [int] NOT NULL,
	[email] [varchar](255) NOT NULL,
	[id_mahasiswa] [int] IDENTITY(1,1) NOT NULL,
	[nim] [varchar](10) NOT NULL,
	[password] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mahasiswa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [nim_unik] UNIQUE NONCLUSTERED 
(
	[nim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mahasiswa_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mahasiswa_prestasi](
	[id_mahasiswa] [int] NOT NULL,
	[id_prestasi] [int] NOT NULL,
	[id_peran_mhs] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mahasiswa] ASC,
	[id_prestasi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[peran_dosen]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peran_dosen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[peran_mhs]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peran_mhs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestasi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama_lomba] [varchar](255) NOT NULL,
	[penyelenggara] [varchar](255) NOT NULL,
	[tanggal_mulai] [date] NOT NULL,
	[tanggal_selesai] [date] NOT NULL,
	[juara] [int] NOT NULL,
	[jenis_kompetisi] [int] NOT NULL,
	[tingkat_kompetisi] [int] NOT NULL,
	[surat_tugas] [varbinary](max) NULL,
	[sertifikat] [varbinary](max) NULL,
	[foto_kegiatan] [varbinary](max) NULL,
	[poster] [varbinary](max) NULL,
	[url_kompetisi] [varchar](255) NOT NULL,
	[jumlah_peserta] [int] NOT NULL,
	[jumlah_pt] [int] NOT NULL,
	[tgl_surat_tugas] [date] NOT NULL,
	[no_surat_tugas] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prodi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prodi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status_validasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_validasi](
	[kode_status] [char](2) NOT NULL,
	[nama_status] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[kode_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tingkatKompetisi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tingkatKompetisi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[validasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[validasi](
	[id] [int] NOT NULL,
	[status] [char](2) NULL,
	[tanggal_validasi] [date] NOT NULL,
	[validated_by] [int] NOT NULL,
	[id_prestasi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin]  WITH CHECK ADD  CONSTRAINT [FK_role] FOREIGN KEY([role])
REFERENCES [dbo].[role] ([id_role])
GO
ALTER TABLE [dbo].[admin] CHECK CONSTRAINT [FK_role]
GO
ALTER TABLE [dbo].[dospem_prestasi]  WITH CHECK ADD  CONSTRAINT [FK_dospem] FOREIGN KEY([id_dospem])
REFERENCES [dbo].[dospem] ([id_dospem])
GO
ALTER TABLE [dbo].[dospem_prestasi] CHECK CONSTRAINT [FK_dospem]
GO
ALTER TABLE [dbo].[dospem_prestasi]  WITH CHECK ADD  CONSTRAINT [FK_peran_dospem] FOREIGN KEY([id_peran_dospem])
REFERENCES [dbo].[peran_dosen] ([id])
GO
ALTER TABLE [dbo].[dospem_prestasi] CHECK CONSTRAINT [FK_peran_dospem]
GO
ALTER TABLE [dbo].[dospem_prestasi]  WITH CHECK ADD  CONSTRAINT [FK_prestasi_dospem] FOREIGN KEY([id_prestasi])
REFERENCES [dbo].[prestasi] ([id])
GO
ALTER TABLE [dbo].[dospem_prestasi] CHECK CONSTRAINT [FK_prestasi_dospem]
GO
ALTER TABLE [dbo].[mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_ProdiId] FOREIGN KEY([prodi_id])
REFERENCES [dbo].[prodi] ([id])
GO
ALTER TABLE [dbo].[mahasiswa] CHECK CONSTRAINT [FK_ProdiId]
GO
ALTER TABLE [dbo].[mahasiswa_prestasi]  WITH CHECK ADD  CONSTRAINT [FK_NIM] FOREIGN KEY([id_mahasiswa])
REFERENCES [dbo].[mahasiswa] ([id_mahasiswa])
GO
ALTER TABLE [dbo].[mahasiswa_prestasi] CHECK CONSTRAINT [FK_NIM]
GO
ALTER TABLE [dbo].[mahasiswa_prestasi]  WITH CHECK ADD  CONSTRAINT [FK_peran_mhs] FOREIGN KEY([id_peran_mhs])
REFERENCES [dbo].[peran_mhs] ([id])
GO
ALTER TABLE [dbo].[mahasiswa_prestasi] CHECK CONSTRAINT [FK_peran_mhs]
GO
ALTER TABLE [dbo].[mahasiswa_prestasi]  WITH CHECK ADD  CONSTRAINT [FK_prestasi_mhs] FOREIGN KEY([id_prestasi])
REFERENCES [dbo].[prestasi] ([id])
GO
ALTER TABLE [dbo].[mahasiswa_prestasi] CHECK CONSTRAINT [FK_prestasi_mhs]
GO
ALTER TABLE [dbo].[prestasi]  WITH CHECK ADD  CONSTRAINT [FK_jenis_kompetisi_id] FOREIGN KEY([jenis_kompetisi])
REFERENCES [dbo].[jenisKompetisi] ([id])
GO
ALTER TABLE [dbo].[prestasi] CHECK CONSTRAINT [FK_jenis_kompetisi_id]
GO
ALTER TABLE [dbo].[prestasi]  WITH CHECK ADD  CONSTRAINT [FK_juara_id] FOREIGN KEY([juara])
REFERENCES [dbo].[juara] ([id])
GO
ALTER TABLE [dbo].[prestasi] CHECK CONSTRAINT [FK_juara_id]
GO
ALTER TABLE [dbo].[prestasi]  WITH CHECK ADD  CONSTRAINT [FK_tingkat_kompetisi_id] FOREIGN KEY([tingkat_kompetisi])
REFERENCES [dbo].[tingkatKompetisi] ([id])
GO
ALTER TABLE [dbo].[prestasi] CHECK CONSTRAINT [FK_tingkat_kompetisi_id]
GO
ALTER TABLE [dbo].[validasi]  WITH CHECK ADD  CONSTRAINT [FK_prestasi_id] FOREIGN KEY([id_prestasi])
REFERENCES [dbo].[prestasi] ([id])
GO
ALTER TABLE [dbo].[validasi] CHECK CONSTRAINT [FK_prestasi_id]
GO
ALTER TABLE [dbo].[validasi]  WITH CHECK ADD  CONSTRAINT [FK_status_validasi] FOREIGN KEY([status])
REFERENCES [dbo].[status_validasi] ([kode_status])
GO
ALTER TABLE [dbo].[validasi] CHECK CONSTRAINT [FK_status_validasi]
GO
ALTER TABLE [dbo].[validasi]  WITH CHECK ADD  CONSTRAINT [FK_validated] FOREIGN KEY([validated_by])
REFERENCES [dbo].[admin] ([id])
GO
ALTER TABLE [dbo].[validasi] CHECK CONSTRAINT [FK_validated]
GO

