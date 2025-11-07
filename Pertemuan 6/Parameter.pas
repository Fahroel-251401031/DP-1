program parameter;
uses crt;

procedure Tampilkannama(nama:string);
begin
    writeln('Halo ', nama);
end;

var
    namaAktual :string;

begin
    clrscr;
    namaAktual := 'Edward';
    TampilkanNama(namaAktual);


end.