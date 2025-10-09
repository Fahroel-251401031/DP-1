program Lingkaran;
uses crt;

const
 pi : 3,14

 var
 r:real;
 luas, keliling: real;

begin
    clscr;
    write('Masukkan jari-jari lingkaran : ' );
    readln(r);

    luas := pi * r;
    keliling := 2 * r * pi;

    writeln('luas lingkaran : ', luas:0:2);
    writeln('keliling lingkaran :', keliling:0;2);
    
end.