unit F01; //login

interface
	uses UTipe_Pokemon;
	function isAdmin(username: string; user: usertab) : boolean;
	procedure login (var username: string; user : usertab);

implementation
function isAdmin(username : string;) : boolean;
{ Menghasilkan true jika username adalah admin }
	var
		i : integer;
	begin
	i := 1;
	isAdmin := False;
	while ((user[i].Username <> 'Admin') or (user[i].Username <> 'admin')) do
		begin
			i := i + 1;
		end;
	if (user[i].Username = 'Admin') or (user[i].Username = 'admin') then
		begin
			isAdmin := True;
		end;
	end;

procedure login (var username: string; user : usertab);
{ Memvalidasi input username dan password untuk login serta menentukan role user }
{ I.S. Array usertab terdefinisi, username dan password akan diinput oleh user}
{ F.S. Mengeluarkan pesan kesalahan apabila username dan password tidak sesuai 
* dengan data user dan mengeluarkan pesan selamat datang untuk input yang valid oleh 
* user yang sudah terdaftar, input username tersimpan}
		var
		i : integer;
		stop : boolean;

		begin
			repeat
			write('Masukkan username: '); readln(username);
			stop := False;
			i := 1;
			while (stop = False) and (user[i].Username <> '.') do
			begin
			if (username = user[i].Username) then
				begin
					stop := True;
					writeln('Selamat datang ',username,'!')
			end else
				begin
					i := i + 1;
				end;
			end;
			if search = False then
				begin
					writeln('Tidak ada username Rex pada database. Sistem akan memulai permainan baru.');
                    stop := True;
				end;
			until(stop);
		end;
end.

