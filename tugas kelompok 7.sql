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
FOREIGN KEY (Jabatan_ID) REFERENCES Jabatan(Jabatan_ID) 
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Penjualan (
No_Transaksi VARCHAR(50) PRIMARY KEY NOT NULL,
Tanggal_Transaksi DATE NOT NULL,
Total_Pembayaran INT NOT NULL,
Jenis_Pembayaran CHAR(50) NOT NULL,
Pegawai_ID INT,
FOREIGN KEY (Pegawai_ID) REFERENCES Pegawai(Pegawai_ID) 
ON UPDATE CASCADE ON DELETE CASCADE
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
ON UPDATE CASCADE ON DELETE CASCADE
); 

CREATE TABLE Rincian_Penjualan (
Rincian_ID VARCHAR(50) PRIMARY KEY NOT NULL,
Harga INT NOT NULL,
Kuantitas_Penjualan INT NOT NULL,
Total_Biaya_Per_Produk INT NOT NULL,
No_Transaksi VARCHAR(50),
Produk_ID INT,
FOREIGN KEY (No_Transaksi)REFERENCES Penjualan(No_Transaksi)
ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Produk_ID) REFERENCES Produk(Produk_ID)
ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO Jabatan (Jabatan_ID, Nama_Jabatan)
VALUES
(1, 'Owner'),
(2, 'General Manager'),
(3, 'Store Manager'),
(4, 'Assistant Manager'),
(5, 'Barista Head'),
(6, 'Senior Barista'),
(7, 'Barista'),
(8, 'Junior Barista'),
(9, 'Brew Master'),
(10, 'Shift Supervisor'),
(11, 'Cashier'),
(12, 'Waiter'),
(13, 'Procurement Specialist'),
(14, 'Host'),
(15, 'Marketing Manager'),
(16, 'Social Media Specialist'),
(17, 'Event Coordinator'),
(18, 'Graphic Designer'),
(19, 'Customer Service'),
(20, 'Maintenance Staff'),
(21, 'Cleaner'),
(22, 'Security'),
(23, 'Trainer'),
(24, 'Quality Control'),
(25, 'Dishwasher'),
(26, 'Recuitment Manager'),
(27, 'Financial Analyst'),
(28, 'Data Analyst'),
(29, 'Sustainability Manager'),
(30, 'Research & Development');



INSERT INTO Pegawai (Pegawai_ID, Nama, Jenis_Kelamin, Tanggal_Lahir, Tanggal_Diterima, Alamat, Honor, Jenis_Pegawai, Jabatan_ID)
VALUES
(1, 'Agus', 'Laki-laki', '1997-02-14', '2020-10-19', 'Jl. Warna XY', 5000000, 'Tetap', '26'),
(2, 'Asep', 'Laki-laki', '2000-08-22', '2021-03-13', 'Jl. Warna ZQ', 4000000, 'Tetap', '21'),
(3, 'Annur', 'Perempuan', '2002-02-02', '2022-05-05', 'Jl. Warna RR', 4000000, 'Tetap', '28'),
(4, 'Akim', 'Laki-laki', '1998-07-26', '2022-08-19', 'Jl. Warna SB', 4500000, 'Tetap', '29'),
(5, 'Oeh', 'Laki-laki', '1999-09-25', '2024-02-11', 'Jl. Warna OP', 2500000, 'Konrak', '8'),
(6, 'Yuni', 'Perempuan', '2000-07-22', '2024-06-28', 'Jl. Warna NU', 2500000, 'Kontrak', '11'),
(7, 'Yoga', 'Laki-laki', '2000-08-13', '2020-01-14', 'Jl. Warna NF', 5000000, 'Tetap', '2'),
(8, 'Yogi', 'Laki-laki', '1997-10-10', '2020-07-07', 'Jl. Warna WX', 5000000, 'Tetap', '5'),
(9, 'Upin', 'Laki-laki', '2003-11-28', '2024-06-28', 'Jl. Warna NU', 2500000, 'Kontrak', '12'),
(10, 'Ipin', 'Laki-laki', '2003-11-28', '2024-06-28', 'Jl. Warna NU', 2500000, 'Kontrak', '25'),
(11, 'Bintang', 'Laki-laki', '1999-09-29', '2021-03-21', 'Jl. Warna YY', 5000000, 'Tetap', '3'),
(12, 'Yoan', 'Laki-laki', '2000-12-01', '2021-05-19', 'Jl. Warna SR', 4000000, 'Tetap', '15'),
(13, 'Asha', 'Perempuan', '2003-01-30', '2022-06-05', 'Jl. Warna BB', 4500000, 'Tetap', '6'),
(14, 'Lunox', 'Perempuan', '2000-09-15', '2024-06-24', 'Jl. Warna LX', 2500000, 'Kontrak', '16'),
(15, 'Hayabusa', 'Laki-laki', '2005-09-21', '2024-06-24', 'Jl. Warna OC', 2500000, 'Konrak', '14'),
(16, 'Fanny', 'Perempuan', '2003-07-07', '2020-03-18', 'Jl. Warna GH', 9000000, 'Tetap', '1'),
(17, 'Ling', 'Laki-laki', '2002-02-18', '2021-04-28', 'Jl. Warna FR', 5000000, 'Tetap', '4'),
(18, 'Chou', 'Laki-laki', '2000-12-12', '2020-04-19', 'Jl. Warna GG', 5000000, 'Tetap', '10'),
(19, 'Lancelot', 'Laki-laki', '2000-02-11', '2024-06-28', 'Jl. Warna NT', 2500000, 'Kontrak', '17'),
(20, 'Nolan', 'Laki-laki', '1999-09-14', '2021-03-24', 'Jl. Warna ST', 5000000, 'Tetap', '30'),
(21, 'Skylar', 'Laki-laki', '2002-01-29', '2021-05-27', 'Jl. Warna HH', 2500000, 'Kontrak', '23'),
(22, 'Lemon', 'Laki-laki', '1998-12-30', '2021-02-17', 'Jl. Warna MG', 5000000, 'Tetap', '27'),
(23, 'Carla', 'Perempuan', '2001-09-11', '2022-02-19', 'Jl. Warna QT', 4500000, 'Tetap', '9'),
(24, 'Miya', 'Perempuan', '2002-04-16', '2024-05-01', 'Jl. Warna SZ', 2500000, 'Kontrak', '19'),
(25, 'Manuel', 'Laki-laki', '2002-10-12', '2024-06-19', 'Jl. Warna VD', 2500000, 'Konrak', '7'),
(26, 'Lylia', 'Perempuan', '2003-10-07', '2020-04-21', 'Jl. Warna DB', 5000000, 'Tetap', '13'),
(27, 'Harith', 'Laki-laki', '2001-10-01', '2021-05-14', 'Jl. Warna JK', 5000000, 'Tetap', '24'),
(28, 'Yve', 'Laki-laki', '2000-11-16', '2021-04-23', 'Jl. Warna RB', 5000000, 'Tetap', '22'),
(29, 'Paquito', 'Laki-laki', '2002-12-03', '2024-03-18', 'Jl. Warna OK', 2500000, 'Kontrak', '18'),
(30, 'Martis', 'Laki-laki', '2000-08-13', '2021-04-25', 'Jl. Warna TH', 5000000, 'Tetap', '20');



INSERT INTO Penjualan (No_Transaksi, Tanggal_Transaksi, Total_Pembayaran,Jenis_Pembayaran, Pegawai_ID)
VALUES
(1, '2024-01-01', 50000, 'Tunai', '1'),
(2, '2024-02-02', 26000, 'Tunai', '3'),
(3, '2024-03-03', 54000, 'Transfer Bank', '5'),
(4, '2024-04-04', 56000, 'Tunai', '7'),
(5, '2024-05-05', 29000, 'Kartu Debit', '9'),
(6, '2024-06-06', 60000, 'Kartu Debit', '11'),
(7, '2024-07-07', 31000, 'Transfer Bank', '13'),
(8, '2024-08-08', 32000, 'Tunai', '15'),
(9, '2024-09-09', 33000, 'Kartu Debit', '17'),
(10, '2024-10-10', 68000, 'Tunai', '19'),
(11, '2024-02-11', 70000, 'Transfer Bank', '21'),
(12, '2024-03-12', 72000, 'Tunai', '23'),
(13, '2024-04-23', 37000, 'Kartu Debit', '25'),
(14, '2024-05-14', 38000, 'Tunai', '27'),
(15, '2024-06-15', 117000, 'Tunai', '29'),
(16, '2024-07-26', 40000, 'Transfer Bank', '2'),
(17, '2024-08-27', 41000, 'Tunai', '4'),
(18, '2024-09-18', 84000, 'Kartu Debit', '6'),
(19, '2024-11-10', 86000, 'Tunai', '8'),
(20, '2024-12-11', 88000, 'Tunai', '10'),
(21, '2024-03-01', 90000, 'Transfer Bank', '12' ),
(22, '2024-04-22', 138000, 'Tunai', '14'),
(23, '2024-05-13', 94000, 'Kartu Debit', '16'),
(24, '2024-06-04', 96000, 'Tunai', '18'),
(25, '2024-07-25', 98000, 'Tunai', '20'),
(26, '2024-08-06', 150000, 'Transfer Bank', '22'),
(27, '2024-09-17', 153000, 'Tunai', '24'),
(28, '2024-09-18', 52000, 'Kartu Debit', '26'),
(29, '2024-11-10', 53000, 'Tunai', '28'),
(30, '2024-12-11', 108000, 'Tunai', '30');


INSERT INTO Produk(Produk_ID, Nama_Produk, Sumber_Produk, Harga, Supplier_ID)
VALUES
(1, 'Espresso', 'Supplier X', 25000, '24'),
(2, 'Americano ', 'Supplier A', 26000, '1'),
(3, 'Latte ', 'Supplier C', 27000, '3'),
(4, 'Cappuccino ', 'Supplier Y', 28000, '25'),
(5, 'Flat White', 'Supplier B', 29000, '2'),
(6, 'Macchiato ', 'Supplier D', 30000, '4'),
(7, 'Mocha ', 'Supplier E', 31000, '5'),
(8, 'Affogato ', 'Supplier W', 32000, '23'),
(9, 'Iced Coffee', 'Supplier Z', 33000, '26'),
(10, 'Cold Brew ', 'Supplier F', 34000, '6'),
(11, 'Matcha Latte', 'Supplier H', 35000, '8'),
(12, 'Matcha Latte', 'Supplier G', 36000, '7'),
(13, 'Earl Grey Latte (London Fog)', 'Supplier J', 37000, '10'),
(14, 'Teh Herbal ', 'Supplier I', 38000, '9'),
(15, 'Thai Iced Tea', 'Supplier L', 39000, '12'),
(16, 'Bubble Tea', 'Supplier K', 40000, '11'),
(17, 'Teh Kombucha', 'Supplier O', 41000, '15'),
(18, 'Iced Hibiscus Tea', 'Supplier M', 42000, '13'),
(19, 'Smoothie Buah', 'Supplier P', 43000, '16'),
(20, 'Milkshake ', 'Supplier N', 44000, '14'),
(21, 'Lemonade ', 'Supplier Q', 45000, '17'),
(22, 'Infused Water', 'Supplier S', 46000, '19'),
(23, 'Virgin Mojito', 'Supplier U', 47000, '21'),
(24, 'Soda Herbal atau Buah', 'Supplier R', 48000, '18'),
(25, 'Hot Chocolate', 'Supplier T', 49000, '20'),
(26, 'Iced Chocolate', 'Supplier V', 50000, '22'),
(27, 'Red Velvet Latte', 'Supplier XY', 51000, '29'),
(28, 'Charcoal Latte', 'Supplier WX', 52000, '27'),
(29, 'Golden Milk (Turmeric Latte)', 'Supplier YZ', 53000, '30'),
(30, 'Taro', 'Supplier WZ', 54000, '28');



INSERT INTO Rincian_Penjualan (Rincian_ID, Harga, Kuantitas_Penjualan, Total_Biaya_Per_Produk, No_Transaksi, Produk_ID)
VALUES
(20240101, 25000, 2, 50000, 1, 1),
(20240202, 26000, 1, 26000, 2, 2),
(20240303, 27000, 2, 54000, 3, 3),
(20240404, 28000, 2, 56000, 4, 4),
(20240505, 29000, 1, 29000,5, 5),
(20240606, 30000, 2, 60000, 6, 6),
(20240707, 31000, 1, 31000, 7, 7),
(20240808, 32000, 1, 32000, 8, 8),
(20240909, 33000, 1, 33000, 9, 9),
(20241010, 34000, 2, 68000, 10, 10),
(20240211, 35000, 2, 70000, 11, 11),
(20240312, 36000, 2, 72000,12, 12),
(20240423, 37000, 1, 37000, 13, 13),
(20240514, 38000, 1, 38000, 14, 14),
(20240615, 39000, 3, 117000, 15, 15),
(20240726, 40000, 1, 40000, 16, 16),
(20240827, 41000, 1, 41000, 17, 17),
(20240918, 42000, 2, 84000, 18, 18),
(20241110, 43000, 2, 86000, 19, 19),
(20241210, 44000, 2, 88000, 20, 20),
(20240301, 45000, 2, 90000, 21, 21),
(20240422, 46000, 3, 138000, 22, 22),
(20240513, 47000, 2, 94000, 23, 23),
(20240604, 48000, 2, 96000, 24, 24),
(20240725, 49000, 2, 98000, 25, 25),
(20240806, 50000, 3, 150000, 26, 26),
(20240917, 51000, 3, 153000, 27, 27),
(20240919, 52000, 1, 52000, 28, 28),
(20241111, 53000, 1, 53000, 29, 29),
(20241211, 54000, 2, 108000, 30, 30);

INSERT INTO Supplier(Supplier_ID ,Nama_Supplier, Alamat, No_Kontak)
VALUES
(1, 'Supplier A', 'Jl. MH Thamrin No. 51', '02150338888'),
(2, 'Supplier B', 'Jl. Raya Serpong', '02153130888'),
(3, 'Supplier C', 'Jl. Jend. Sudirman Kav. 76-78', '02157958822'),
(4, 'Supplier D', 'Jl. BSD Boulevard Barat', '02180827000'),
(5, 'Supplier E', 'Jl. Jend. Sudirman Kav. 5-6', '0216522555'),
(6, 'Supplier F', 'Jl. Japati No. 1', '02105215222'),
(7, 'Supplier G', 'Jl. Semampir II / 1', '0354682111'),
(8, 'Supplier H', 'Jl. Let. Jend. Suprapto', '02142873888'),
(9, 'Supplier I', 'Jl. Veteran No. 9' ,'0213847709'),
(10,'Supplier J', 'Jl. Letjen TB Simatupang No. 1, Indonesia', '0217891234'),
(11,'Supplier K', 'Jl. Medan Merdeka Timur No. 1A', '0213815111'),
(12,'Supplier L', 'Jl. K.H. Zainul Arifin No. 20', '0216334838 '),
(13,'Supplier M', 'Jl. Kali Besar Barat No. 41', '216909888'),
(14,'Supplier N', 'Jl. Veteran, Gresik 6112', '031398 1731'),
(15,'Supplier O', 'JL. Mini Indonesia Indah', '0218413526'),
(16,'Supplier P', 'Jl. H.R. Rasuna Said Block X-5 Kav. 1-2', '02125533888'),
(17,'Supplier Q', 'Jl. Parigi No. 1', '0215254014'),
(18,'Supplier R', 'Jl. MT. Haryono Kav. No. 10', '0218508520'),
(19,'Supplier S', 'Jl. D.I. Panjaitan Kav. 9', '0218192808'),
(20,'Supplier T', 'Jl. Raya Narogong KM. 7', '02129861000'),
(21,'Supplier U', 'Jl. Siliwangi No. 178', '0215553001'),
(22,'Supplier V', 'Jl. Industri Mulia No. 58', '0267440111'),
(23,'Supplier W', 'Jl. KH. Samanhudi No. 88', '0271593188'),
(24,'Supplier X', 'Jl. M.H. Thamrin No. 9', '02189816688'),
(25,'Supplier Y', 'Jl. Daan Mogot KM 18', '02180637777'),
(26,'Supplier Z', 'Jl. Ancol Barat VIII No. 1', '0216919999'),
(27,'Supplier WX', 'Jl. Jend. Sudirman Kav. 58', '0215266666'),
(28,'Supplier WZ', 'Jl. Raya Timur 13910', '0214603368'),
(29,'Supplier XY', 'Jl. Irian Blok P No. 9', '02180640333'),
(30, 'Supplier YZ', 'Jl. Daan Mogot KM 19', '02180638888');


