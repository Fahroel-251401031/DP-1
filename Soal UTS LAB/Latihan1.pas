Program RentalMobil;
uses crt;

var
    jenis: string;
    hari, jarak: integer;
    biaya_harian, biaya_jarak, total:real;
begin
clrscr;
    write('Masukkan jenis mobil(ekonomi/sedan/SUV): ');
    readln(jenis);
    write('pemesanan berapa hari: ');
    readln(hari);
    write('berkendara seberapa jauh(km): ');
    readln(jarak);

    // Menentukan biaya harian berdasarkan jenis mobil
    if (jenis = 'ekonomi') or (jenis = 'ekonomi') then
        biaya_harian := 300000
    else if (jenis = 'sedan') or (jenis = 'sedan') then
        biaya_harian := 400000
    else if (jenis = 'SUV') or (jenis = 'SUV') then
        biaya_harian := 500000
    else
    biaya_harian := 0;

    //Menentukan biaya berdasarkan jarak
    if jarak <= 100 then
        biaya_jarak := jarak * 1500
    else if jarak <= 200 then
        biaya_jarak := (100 * 1500) + ((jarak - 100) * 1000)
    else
        biaya_jarak := (100 * 1500) + (100 * 1000) + ((jarak - 200) * 500);

    total := (biaya_harian * hari) + biaya_jarak;

    writeln('total biaya sewa: Rp', total:0:0);
    
    readln;
end.