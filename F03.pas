unit F03; //invetori

interface
	uses UTipe_Pokemon;
	procedure inventaris (var tab : invetori);

implementation

procedure inventaris (var tab : invetori);
    var
        i : integer;
    begin
        for i := 1 to tab.Neff do
            begin
                writeln(tab[i].Nomor,' | ',tab[i].Nama,' | Level ', tab[i].Level;,' | ', tab[i].Kondisi);
            end;
    end;