Program HitungAngka;
uses crt;

var 
    n, i, angka, total: integer;
    rata: real;

begin
    clrscr;

    write('Masukkan N: ');
    readln(n);

    total := 0;

    for i := 1 to n do
    begin
        write('Angka ke-', i, ': ');
        readln(angka);
        total := total + angka;
    end;

    rata := total / n;

    writeln;
    writeln('Jumlah total: ', total);
    writeln('Rata-rata: ', rata :0:1);

    readln;
end.