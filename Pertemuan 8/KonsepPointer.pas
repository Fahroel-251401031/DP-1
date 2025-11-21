program PointerKonsep;
uses crt;

var
    x: integer;
    p: ^integer;

begin
    clrscr;
    x := 10;
    p := @x;

    writeln('isi dari x : , x');

    writeln('Alamat dari variabel x : ', PtrUInt(p));

    //isi alamatnya
    writeln('Isi x via pointer p^ : ',p^);

end.