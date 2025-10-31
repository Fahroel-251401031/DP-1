program NilaiPraktikan;
uses crt;

var
  nama: string;
  nilai: integer;
  huruf: string;
  i, lulus, ulang: integer;

begin
  clrscr;

  lulus := 0;
  ulang := 0;

  for i := 1 to 5 do
  begin
    writeln('Nama Praktikan ', i, ': ');
    readln(nama);

    writeln('Nilai Akhir: ');
    readln(nilai);

    if nilai >= 90 then huruf := 'A'
    else if nilai >= 85 then huruf := 'B+'
    else if nilai >= 75 then huruf := 'C+'
    else if nilai >= 70 then huruf := 'C'
    else if nilai >= 65 then huruf := 'D'
    else huruf := 'E';

    writeln('Indeks Nilai Praktikan ', i, ': ', huruf);

    if (huruf = 'A') or (huruf = 'B+') or (huruf = 'C+') or (huruf = 'C') then
      lulus := lulus + 1
    else
      ulang := ulang + 1;

    writeln;
  end;

  writeln('Total praktikum lulus: ', lulus);
  writeln('Total praktikum mengulang: ', ulang);

  readln;
end.