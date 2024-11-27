/****** Object:  StoredProcedure [dbo].[sp_delete_dospem_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_dospem_prestasi]
    @id_prestasi INT,
    @id_dospem INT
AS
BEGIN
    DELETE FROM dbo.dospem_prestasi
    WHERE id_prestasi = @id_prestasi AND id_dospem = @id_dospem;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_mahasiswa_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_mahasiswa_prestasi]
    @id_mahasiswa INT,
    @id_prestasi INT
AS
BEGIN
    DELETE FROM dbo.mahasiswa_prestasi
    WHERE id_mahasiswa = @id_mahasiswa AND id_prestasi = @id_prestasi;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_delete_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_delete_prestasi]
    @id INT
AS
BEGIN
    DELETE FROM dbo.prestasi
    WHERE id = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_all_prestasi]
AS
BEGIN
    SELECT * FROM dbo.prestasi;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_get_prestasi_by_id]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_prestasi_by_id]
    @id INT
AS
BEGIN
    SELECT * 
    FROM dbo.prestasi
    WHERE id = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_dospem_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_dospem_prestasi]
    @id_prestasi INT,
    @id_dospem INT,
    @id_peran_dospem INT
AS
BEGIN
    INSERT INTO dbo.dospem_prestasi (id_prestasi, id_dospem, id_peran_dospem)
    VALUES (@id_prestasi, @id_dospem, @id_peran_dospem);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_mahasiswa_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_mahasiswa_prestasi]
    @id_mahasiswa INT,
    @id_prestasi INT,
    @id_peran_mhs INT
AS
BEGIN
    INSERT INTO dbo.mahasiswa_prestasi (id_mahasiswa, id_prestasi, id_peran_mhs)
    VALUES (@id_mahasiswa, @id_prestasi, @id_peran_mhs);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_insert_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insert_prestasi]
    @nama_lomba NVARCHAR(255),
    @penyelenggara NVARCHAR(255),
    @tanggal_mulai DATE,
    @tanggal_selesai DATE,
    @juara INT,
    @jenis_kompetisi INT,
    @tingkat_kompetisi INT,
    @surat_tugas VARBINARY(MAX),
    @sertifikat VARBINARY(MAX),
    @foto_kegiatan VARBINARY(MAX),
    @poster VARBINARY(MAX),
    @url_kompetisi NVARCHAR(255),
    @jumlah_pt INT,
    @tgl_surat_tugas DATE,
    @no_surat_tugas NVARCHAR(100)
AS
BEGIN
    INSERT INTO dbo.prestasi (
        nama_lomba, penyelenggara, tanggal_mulai, tanggal_selesai, 
        juara, jenis_kompetisi, tingkat_kompetisi, surat_tugas, 
        sertifikat, foto_kegiatan, poster, url_kompetisi, 
        jumlah_pt, tgl_surat_tugas, no_surat_tugas
    )
    VALUES (
        @nama_lomba, @penyelenggara, @tanggal_mulai, @tanggal_selesai, 
        @juara, @jenis_kompetisi, @tingkat_kompetisi, @surat_tugas, 
        @sertifikat, @foto_kegiatan, @poster, @url_kompetisi, 
        @jumlah_pt, @tgl_surat_tugas, @no_surat_tugas
    );
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_dospem_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_update_dospem_prestasi]
    @id_prestasi INT,
    @id_dospem INT,
    @id_peran_dospem INT
AS
BEGIN
    UPDATE dbo.dospem_prestasi
    SET id_peran_dospem = @id_peran_dospem
    WHERE id_prestasi = @id_prestasi AND id_dospem = @id_dospem;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_mahasiswa_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_update_mahasiswa_prestasi]
    @id_mahasiswa INT,
    @id_prestasi INT,
    @id_peran_mhs INT
AS
BEGIN
    UPDATE dbo.mahasiswa_prestasi
    SET id_peran_mhs = @id_peran_mhs
    WHERE id_mahasiswa = @id_mahasiswa AND id_prestasi = @id_prestasi;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_update_prestasi]    Script Date: 11/27/2024 3:25:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_update_prestasi]
    @id INT,
    @nama_lomba NVARCHAR(255),
    @penyelenggara NVARCHAR(255),
    @tanggal_mulai DATE,
    @tanggal_selesai DATE,
    @juara INT,
    @jenis_kompetisi INT,
    @tingkat_kompetisi INT,
    @surat_tugas VARBINARY(MAX),
    @sertifikat VARBINARY(MAX),
    @foto_kegiatan VARBINARY(MAX),
    @poster VARBINARY(MAX),
    @url_kompetisi NVARCHAR(255),
    @jumlah_pt INT,
    @tgl_surat_tugas DATE,
    @no_surat_tugas NVARCHAR(100)
AS
BEGIN
    UPDATE dbo.prestasi
    SET 
        nama_lomba = @nama_lomba,
        penyelenggara = @penyelenggara,
        tanggal_mulai = @tanggal_mulai,
        tanggal_selesai = @tanggal_selesai,
        juara = @juara,
        jenis_kompetisi = @jenis_kompetisi,
        tingkat_kompetisi = @tingkat_kompetisi,
        surat_tugas = @surat_tugas,
        sertifikat = @sertifikat,
        foto_kegiatan = @foto_kegiatan,
        poster = @poster,
        url_kompetisi = @url_kompetisi,
        jumlah_pt = @jumlah_pt,
        tgl_surat_tugas = @tgl_surat_tugas,
        no_surat_tugas = @no_surat_tugas
    WHERE id = @id;
END;
GO