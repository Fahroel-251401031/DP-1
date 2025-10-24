program peloncatan;
uses crt;

label a, b, c, d, e;

var
    i: integer;

    // prosedure
    procedure keluar;
    begin
        writeln('Fasilkom-Ti');
        exit;
        writeln('USU');
    end;

begin
    clrscr;

    //label dan statemant Goto
    //IKLC USU, Ilkom, Fasilkom-Ti, USU

    goto a;
    d: write('USU');
    writeln;
    goto e;
    b: write('Ilkom, ');
    goto c;
    a: write('IKLC, ');
    goto b;
    c: write('Fasilkom-Ti, ');
    goto d;
    e:


    // Prosedur Break
    for i:= 1 to 10 do
    begin
        if (i > 3) then
            break;
            writeln('IKLC USU !');
    end;
    writeln('YEYYY !');
    

    // prosedur continue
    // while(true) do
    // begin
    //     write('masukkan bilangan positif: ');
    //     readln(i);
    //     if (i > 0) then
    //     continue
    //     else
    //         writeln(i);
    // end;


    // Prosedur Exit
    writeln('Ilmu Komputer');
    keluar; // panggil prosedur keluar
    writeln('laboratorium');

    // prosedurr Halt
    writeln('program dimulai.');
    halt;
    writeln('Kode ini tidak akan pernanh dijalankan');


end.