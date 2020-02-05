CREATE TABLE penumpang (
	id_penumpang varchar (9) primary key,
    username varchar (50),
    password varchar (50),
    nama_penumpang varchar (50),
    alamat_penumpang varchar (50),
    tanggal_lahir date,
    jenis_kelamin varchar (50),
    telefone varchar (12)
);

CREATE TABLE pemesanan (
	id_pemesanan varchar (9) primary key,
    kode_pemesanan varchar (9),
    tanggal_pemesanan date,
    tempat_pemesanan varchar (50),
    id_pelanggan varchar (9),
    kode_kursi varchar (9),
    id_rute varchar (9),
    tujuan varchar (50),
    tanggal_berangkat date,
    jam_cekin time,
    jam_berangkat time,
    total_bayar int,
    id_petugas varchar (9)
);

CREATE TABLE petugas (
	id_petugas varchar (9) primary key,
    username varchar (50),
    password varchar (50),
    nama_petugas varchar (50),
    id_level varchar (9)
);

CREATE TABLE level (
	id_level varchar (9) primary key,
    nama_level varchar (50)
);

CREATE TABLE rute (
	id_rute varchar (9) primary key,
    tujuan varchar (50),
    rute_awal varchar (50),
    rute_ahir varchar (50),
    harga int,
    id_transportasi varchar (9)
);

CREATE TABLE transportasi (
	id_transportasi varchar (9) primary key,
    kode varchar (9),
    jumlah_kursi int,
    keterangan varchar (50),
    id_type_transportasi varchar (9)
);

CREATE TABLE type_transportasi (
	id_type_transportasi varchar (9) primary key,
    nama_type varchar (9),
    keterangan varchar (9)
);