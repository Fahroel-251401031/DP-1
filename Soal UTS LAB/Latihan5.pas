program PolaRahasia_Repeat;
uses crt;

var
  nama: string;
  n, i, j: integer;

begin
  clrscr;
  write('Masukkan nama: ');
  readln(nama);
  write('Masukkan n: ');
  readln(n);

  writeln;
  writeln(nama, ', inilah pola angka rahasiamu:');
  writeln;

  i := 1;

  repeat
    j := 1;
    repeat
      if (i mod 2 = 0) then
        write(i, ' (genap) ')
      else
        write(i, ' (ganjil) ');
      j := j + 1;
    until j > i;

    writeln;
    i := i + 1;
  until i > n;

  readln;
end.