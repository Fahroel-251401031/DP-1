program DataMahasiswa;
uses crt;

const
    MAX = 100;

type
    TMahasiswa = record
        nama : string;
        nim  : string;
        nilaiTugas : integer;
        nilaiUTS   : integer;
        nilaiUAS   : integer;
        rataRata   : real;
        status     : string;
    end;

var
    dataMhs : array[1..MAX] of TMahasiswa;
    n : integer;

{ ===== FUNCTION MENGHITUNG RATA-RATA ===== }
function HitungRata(tugas, uts, uas: integer): real;
begin
    HitungRata := (tugas + uts + uas) / 3;
end;

{ ===== PROCEDURE MENENTUKAN STATUS ===== }
procedure TentukanStatus(var m: TMahasiswa);
begin
    if m.rataRata >= 60 then
        m.status := 'LULUS'
    else
        m.status := 'TIDAK LULUS';
end;

{ ===== PROCEDURE MENAMBAH DATA MAHASISWA ===== }
procedure TambahMahasiswa;
begin
    clrscr;
    if n = MAX then
    begin
        writeln('Data penuh, tidak bisa menambah lagi!');
        readln; exit;
    end;

    inc(n);
    writeln('Input Data Mahasiswa ke-', n);
    write('Nama        : '); readln(dataMhs[n].nama);
    write('NIM         : '); readln(dataMhs[n].nim);
    write('Nilai Tugas : '); readln(dataMhs[n].nilaiTugas);
    write('Nilai UTS   : '); readln(dataMhs[n].nilaiUTS);
    write('Nilai UAS   : '); readln(dataMhs[n].nilaiUAS);

    { Hitung nilai }
    dataMhs[n].rataRata := HitungRata(
        dataMhs[n].nilaiTugas,
        dataMhs[n].nilaiUTS,
        dataMhs[n].nilaiUAS
    );

    { Tentukan Lulus/Tidak }
    TentukanStatus(dataMhs[n]);

    writeln('Data berhasil ditambahkan!');
    readln;
end;

{ ===== PROCEDURE MENAMPILKAN SEMUA DATA ===== }
procedure TampilData;
var
    i: integer;
begin
    clrscr;
    if n = 0 then
    begin
        writeln('Belum ada data mahasiswa.');
        readln; exit;
    end;

    writeln('===== DATA MAHASISWA =====');
    writeln('-------------------------------------------------------------');
    writeln('No | Nama              | NIM       | Rata-rata | Status');
    writeln('-------------------------------------------------------------');

    for i := 1 to n do
    begin
        writeln(i:2, ' | ', dataMhs[i].nama, ' | ', dataMhs[i].nim,
                ' | ', dataMhs[i].rataRata:5:2, '     | ', dataMhs[i].status);
    end;

    writeln('-------------------------------------------------------------');
    readln;
end;

{ ===== PROCEDURE MENCARI MAHASISWA BERDASARKAN NAMA ===== }
procedure CariMahasiswa;
var
    i: integer;
    cari: string;
    ketemu: boolean;
begin
    clrscr;
    write('Masukkan nama mahasiswa yang dicari: ');
    readln(cari);

    ketemu := false;

    for i := 1 to n do
    begin
        if (dataMhs[i].nama = cari) then
        begin
            ketemu := true;
            writeln('Data ditemukan!');
            writeln('Nama        : ', dataMhs[i].nama);
            writeln('NIM         : ', dataMhs[i].nim);
            writeln('Nilai Tugas : ', dataMhs[i].nilaiTugas);
            writeln('Nilai UTS   : ', dataMhs[i].nilaiUTS);
            writeln('Nilai UAS   : ', dataMhs[i].nilaiUAS);
            writeln('Rata-rata   : ', dataMhs[i].rataRata:5:2);
            writeln('Status      : ', dataMhs[i].status);
        end;
    end;

    if not ketemu then
        writeln('Mahasiswa tidak ditemukan.');

    readln;
end;


{ ===== MAIN PROGRAM ===== }
var
    pilih: integer;

begin
    n := 0;
    repeat
        clrscr;
        writeln('=== PROGRAM DATA MAHASISWA ===');
        writeln('1. Tambah Data Mahasiswa');
        writeln('2. Tampilkan Semua Data');
        writeln('3. Cari Mahasiswa');
        writeln('0. Keluar');
        writeln('-------------------------------');
        write('Pilih menu: '); readln(pilih);

        case pilih of
            1: TambahMahasiswa;
            2: TampilData;
            3: CariMahasiswa;
        end;

    until pilih = 0;

    writeln('Program selesai. Terima kasih!');
end.