program BilanganPrima;
uses crt;

var
    n, i, j, jumlah: integer;
    prima: boolean;

begin
    clrscr;

    write('Masukkan n: ');
    readln(n);

    write('Bilangan prima antara 1 dan ', n, 'adalah: ');

    for i := 2 to n do
    begin   
        prima := true;

        for j := 2 to i - 1 do
        begin
            if i mod j = 0 then
                prima := false;
        end;

        if prima = true then
            write(i, ' ');
    end;

    readln;
end.