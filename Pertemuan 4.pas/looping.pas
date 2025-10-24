program perulangan;
uses crt;

var
    i, j, n: integer;

begin
    clrscr;
    //statemant for
    // for i:= 0 to 7 do
    //  writeln('Fasilkom-Ti');

    // for i:= 0 to 10 do8
    //  writeln(n);

    // for i:= 10 downto 1 do
    //  writeln(i);

    //NESTED LOOP
    writeln('Masukkan banyak baris : ');
    readln(n);

        for i:= 1 to n do
        begin
            for j:= 1 to - i do
                write('  ');

        for j:= 1 to 2*i-1 do
                write(' *');
                writeln;
    end;
end.