program Parameter;
uses crt;

procedure HitungLuasKeliling(
    p, l: integer; // parameter masukan
    var luas, keliling: integer // parameter keluaran
);
begin
    luas:= p * l;
    keliling:= 2*(p + l);
end;

procedure UbahUkuran(
    var p, l: integer // parameter masukan-keluaran
);
begin
    p:= p + 2;
    l:= l + 1;
end;

var
    panjang, lebar: integer;
    L, K: integer;
    
begin
    clrscr;
    write('Masukkan panjang : ');
    readln(panjang);
    write('Masukkan lebar : ');
    readln(lebar);
    
    // Panggil prosedur HitungLuasKeliling
    HitungLuasKeliling(panjang, lebar, L, K);
    writeln('Luas = ', L);
    writeln('Keliling = ', K);
    
    // Panggil procedure UbahUkuran
    UbahUkuran(panjang, lebar);
    writeln('-- Setelah di ubah --');
    writeln('panjang yang baru : ', panjang);
    writeln('lebar yang baru : ', lebar);
    
    // Hitung lagi dengan ukuran yang baru
    HitungLuasKeliling(panjang, lebar, L, K);
    writeln('Luas baru = ', L);
    writeln('Keliling keliling = ', K)
    
end.