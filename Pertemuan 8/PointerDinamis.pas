program PointerDinamis;
uses crt;

var
    x: integer;
    p: ^integer;
    q: ^integer;

begin
    clrscr;
    x := 10;
    p := @x;

    writeln('isi dari x : , x');

    writeln('Alamat dari variabel x : ', PtrUInt(p));

    //isi alamatnya
    writeln('Isi x via pointer p^ : ', p^);

    new(q); //
    q^ := 20; //

    writeln('Alamat q : ', PtrUInt (q));
    writeln('Isi dari q^ : ', q^);

    dispose(q);

end.