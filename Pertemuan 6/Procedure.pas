program contohprocedure;
uses crt;

procedure Tampilkanhasil(a, b: integer);

    var
    jumlah: integer;
    begin
        jumlah:= a+ b;
        writeln('Hasil perjumlahan = ', Jumlah);
    end;

begin
    clrscr;
    Tampilkanhasil(5, 3);
end.