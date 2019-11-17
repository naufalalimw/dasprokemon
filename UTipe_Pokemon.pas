unit UTipe_Pokemon;

//kamus untuk setiap tipe bentukan baru. 

interface
  type
    Pokemon = record
    Nomor,Level : integer;
    Nama, Tipe, Evolusi, Kondisi  : string;
  end;
  	registrasi = record
  	Username : string;
  end;
    pinjam = record
    Username, Tanggal_Peminjaman, Tanggal_Batas_Peminjaman: string;
    Idbuku : integer;
    Status_Pengembalian: boolean;
  end;
    kembali = record
    Username, Tanggal_Pengembalian : string;
    Idbuku : integer;
  end;
    user = record
    Nama, Alamat, Username, Password, Role : string;
  end;
	hilang = record
	Username, Tanggal_Laporan : string;
	Idbuku_hilang : integer;
  end;
	
	//deklarasi array of tipe dari tipe yang sudah dibuat.
	//array tersebut akan merepresntasikan external file yang sudah diload.
  poketab = record
    tab : array [0..100] of Pokemon;
    Neff : integer;
   end;
  regtab = array [0..100] of registrasi;
  invetori = record
    tab : array [0..10] of Pokemon;
    Neff : integer;
   end;
  kembalitab = array [0..100] of kembali;
  pinjamtab = array [0..100] of pinjam;
  usertab = array [0..100] of user;
  hilangtab = array [0..100] of hilang;
  


implementation
end.
