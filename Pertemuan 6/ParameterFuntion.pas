program funtion;
uses crt;

funtion HitungJumlah(a, b: integer);integer;
begin
    HitungJumlah:= a + b; //nilai yang di kembalikan
end;

var
    hasil: integer;
begin
    clrscr;
    //
    hasil:= HitungJunlah(5, 3); //fungsi mengembalikan niali ke 
    writeln('Nilai hasil dari funtion = ', hasil);


end.