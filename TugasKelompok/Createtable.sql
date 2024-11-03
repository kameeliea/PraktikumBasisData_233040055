CREATE TABLE Jabatan (
Jabatan_ID INT PRIMARY KEY NOT NULL,
Nama_Jabatan VARCHAR(80) NOT NULL,
);

CREATE TABLE Pegawai (
Pegawai_ID INT PRIMARY KEY NOT NULL,
Nama VARCHAR(80) NOT NULL,
Jenis_Kelamin CHAR(20) NOT NULL,
Tanggal_Lahir DATE NOT NULL,
Tanggal_Diterima DATE NOT NULL,
Alamat CHAR(50) NOT NULL,
Honor CHAR(20) NOT NULL,
Jenis_Pegawai CHAR(10) NOT NULL,
Jabatan_ID INT,
FOREIGN KEY (Jabatan_ID) REFERENCES Jabatan(Jabatan_ID),
);

CREATE TABLE Penjualan (
No_Transaksi VARCHAR(50) PRIMARY KEY NOT NULL,
Tanggal_Transaksi DATE NOT NULL,
Total_Pembayaran INT NOT NULL,
Jenis_Pembayaran CHAR(50) NOT NULL,
Pegawai_ID INT,
FOREIGN KEY (Pegawai_ID) REFERENCES Pegawai(Pegawai_ID)
);

CREATE TABLE Supplier (
Supplier_ID INT PRIMARY KEY NOT NULL,
Nama_Supplier CHAR(30) NOT NULL,
Alamat CHAR(50) NOT NULL,
No_Kontak CHAR(11) UNIQUE NOT NULL
); 

CREATE TABLE Produk (
Produk_ID INT PRIMARY KEY NOT NULL,
Nama_Produk VARCHAR(80) NOT NULL,
Sumber_Produk CHAR(20),
Harga INT NOT NULL,
Supplier_ID INT,
FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
); 

CREATE TABLE Rincian_Penjualan (
Rincian_ID VARCHAR(50) PRIMARY KEY NOT NULL,
Harga INT NOT NULL,
Kuantitas_Penjualan INT NOT NULL,
Total_Biaya_Per_Produk INT NOT NULL,
No_Transaksi VARCHAR(50),
Produk_ID INT,
FOREIGN KEY (No_Transaksi)REFERENCES Penjualan(No_Transaksi),
FOREIGN KEY (Produk_ID) REFERENCES Produk(Produk_ID)
);
