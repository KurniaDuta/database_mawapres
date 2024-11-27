INSERT INTO prodi (nama) 
VALUES 
    ('D-IV Teknik Informatika'),
    ('D-IV Sistem Informasi Bisnis'),
    ('D-II PPLS');

INSERT INTO tingkatKompetisi (nama) 
VALUES 
    ('Sekolah'),
    ('Kecamatan'),
	('Kab/Kota'),
	('Provinsi'),
	('Nasional'),
    ('Lainnya');

INSERT INTO jenisKompetisi (nama) 
VALUES 
    ('Sains'),
    ('Seni'),
	('Olahraga');

INSERT INTO peran_mhs(nama) 
VALUES 
    ('Ketua'),
    ('Anggota'),
	('Personal');

INSERT INTO peran_dosen(nama) 
VALUES 
    ('Melakukan pembinaan kegiatan mahasiswa di bidang akademik (PA) dan kemahasiswaan (BEM, Maperwa, dan lain-lain)'),
    ('Membimbing mahasiswa menghasilkan produk saintifik bereputasi dan mendapat pengakuan tingkat Internasional'),
	('Membimbing mahasiswa menghasilkan produk saintifik bereputasi dan mendapat pengakuan tingkat Nasional'),
	('Membimbing mahasiswa mengikuti kompetisi di bidang akademik dan kemahasiswaan bereputasi dan mencapai juara tingkat Internasional'),
	('Membimbing mahasiswa mengikuti kompetisi di bidang akademik dan kemahasiswaan bereputasi dan mencapai juara tingkat Nasional');

INSERT INTO juara(nama) 
VALUES 
    ('Juara 1'),
    ('Juara 2'),
	('Juara 3');

INSERT INTO mahasiswa (nim, nama, angkatan, password, prodi_id, email) VALUES
('2341720199', 'ADHAM BASKARA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'adham@polinema.ac.id'),
('2341720174', 'ADITYA ATADEWA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 3, 'aditya@polinema.ac.id'),
('2341720069', 'AHMAD FADLI WAHYU SARDANA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'fadli@polinema.ac.id'),
('2341720040', 'AKHMAD AAKHIF ATHALLAH', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'aakhif@polinema.ac.id'),
('2341720155', 'ALEXANDER AGUNG RAYA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'alexander@polinema.ac.id'),
('2341720144', 'ANUGERAH RACHMADANI', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'anugerah@polinema.ac.id'),
('2341720088', 'AYLEEN RUHUL QISTHY', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'ayleen@polinema.ac.id'),
('2341720249', 'DANENDRA ADHIPRAMANA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'adhipramana@polinema.ac.id'),
('2341720229', 'DANENDRA NAYAKA PASSADHI', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'nayaka@polinema.ac.id'),
('2341720076', 'DINA RAHMAWATI', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'dinarahma@polinema.ac.id'),
('2341720139', 'DUTA KURNIA ARDHANI', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'dutaka@polinema.ac.id'),
('2341720003', 'FAIS RESTU PRATAMA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'restu@polinema.ac.id'),
('2341720128', 'FAJRUL SANTOSO', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'fajrul@polinema.ac.id'),
('2341720188', 'FATIKAH SALSABILLA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'fatikah@polinema.ac.id'),
('2341720102', 'FAWWAZ ALIFIO FARSA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'fawwaz@polinema.ac.id'),
('2341720008', 'FIERA ZIADATUN NISA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'fiera@polinema.ac.id'),
('2341720242', 'GHAISAN RAFA PRADIPTA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'ghaisan@polinema.ac.id'),
('2341720116', 'HAIKAL MUHAMMAD RAFLI', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'haikal@polinema.ac.id'),
('2341720044', 'IRSA CAHAYA WIDODO', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 3, 'irsa@polinema.ac.id'),
('2341720032', 'IVANSYAH EKA OKTAVIAJI SANTOSO', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 3, 'ivansyah@polinema.ac.id'),
('2341720149', 'KEVIN ADIKA SAPUTRA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 3, 'kevin@polinema.ac.id'),
('2341720060', 'KHOIROTUN NISA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'khoirotun@polinema.ac.id'),
('2341720161', 'MARSYA AURELIA SEFIRA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'marsya@polinema.ac.id'),
('2341720133', 'MAULANA RENGGA RAMADAN', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'rengga@polinema.ac.id'),
('2341720191', 'MUHAMMAD AL-FATIH ILLIAM ROBBY', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'fatih@polinema.ac.id'),
('2341720248', 'MUHAMMAD DHIA RAMADHANI HAQ', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'dhiahaq@polinema.ac.id'),
('2341720019', 'MUHAMMAD ERRIL PUTRA PRATIDINA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'erril@polinema.ac.id'),
('2341720045', 'NABEEL NIZAM', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 2, 'nabeel@polinema.ac.id'),
('2341720153', 'NATHANAEL JUAN GRACEDO', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 3, 'juan@polinema.ac.id'),
('2341720115', 'RAFI ABIYYU AIRLANGGA', '2023', '18cc5303c965bfc9eee3e5a50dde95e1', 1, 'abiyyu@polinema.ac.id');


insert into dospem (nip, nama) values
('198108092010121001', 'Yoppy Yunhasnawa, S.ST., M.Sc'),
('198108092010121002', 'Banni Satria Andoko, S.Kom., M.Si'),
('198108092010121003', 'Dika RIzky Yunianto, S.Kom., M.kom');

insert into admin (id, nama, nip, password, role) values
(101, 'admin1', '198108092010121113', '18cc5303c965bfc9eee3e5a50dde95e1', 1),
(102, 'admin2', '198108092010121114', '18cc5303c965bfc9eee3e5a50dde95e1', 1),
(111, 'kajur', '198108092010121115', '18cc5303c965bfc9eee3e5a50dde95e1', 2)

insert into status_validasi(kode_status, nama_status) values ('VR', 'Terverifikasi'), ('PS', 'Diproses'), ('TK','Ditolak');

insert into role (nama_role) values ('Admin'), ('Kepala Jurusan');