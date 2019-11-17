unit F04; //pelepasan

interface
	uses UTipe_Pokemon;
	procedure lepas (var tab : invetori; N : integer{nomor yang dilepas};);

implementation

	procedure lepas (var tab : invetori; N : integer{nomor yang dilepas};);
    var
        i : integer;
    begin
        writeln('');
        if (tab[N].Nama <> '') then
        begin
             writeln('Pelepasan berhasil!');
             writeln('');
             for i := N to tab.Neff do
             begin
                 tab[i].Nama := tab[i+1].Nama;
                 tab[i].Level := tab[i+1].Level;
                 tab[i].Kondisi := tab[i+1].Kondisi;
             end;
             tab.Neff := tab.Neff - 1;
             writeln('Isi inventory saat ini:');
            for i := 1 to tab.Neff do
            begin
                writeln(tab[i].Nomor,' | ', tab[i].Nama,' | Level ', tab[i].Level, ' | ', tab[i].Kondisi);
            end;
        end else
        begin
            writeln('Tidak ada pokebon pada nomor inventori ', N,'.');
        end;
    end;