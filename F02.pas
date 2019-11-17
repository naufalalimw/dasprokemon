unit F02; //pokedex

interface
	uses UTipe_Pokemon;
	procedure pokedex (var tab : poketab);

implementation

procedure pokedex (var tab : poketab);
    var 
        i : integer;
    begin
        for i := 1 to tab.Neff do
        begin
            writeln(tab[i].Nomor,' | ',tab[i].Nama,' | ', tab[i].Tipe,' | ', tab[i].Evolusi);
        end;
    end;
end.