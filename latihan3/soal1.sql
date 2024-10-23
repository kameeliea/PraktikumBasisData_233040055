CREATE TABLE Mahasiswa (
mahasiswa_id bigint primary key,
NPM int,
nama varchar(255),
tanggal_lahir date,
alamat varchar(255),
no_hp int,
jurusan_id bigint,
dosen_wali_id bigint
);