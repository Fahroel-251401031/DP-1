program penugasanrecord;
uses crt;

type 
    waktu = record
        tanggal, tahun : integer;
        bulan : string;
end;

var 
    hari_ini1, hari_ini2 : waktu;

begin 
    clrscr;
    //penugasanrecord
    write('Masukkan Tanggal: ');
    readln(hari_ini1.tanggal);
    write('Masukkan Bulan: ');
    readln(hari_ini1.bulan);
    write('Masukkan Tahun: ');
    readln(hari_ini1.tahun);

    // salin seluruh isi harini1 ke harini 2
    hari_ini2 := hari_ini1;

    writeln(hari_ini2.tanggal, ' ',hari_ini2.bulan, ' ',hari_ini2.tahun);

end.