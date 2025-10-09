program NilaiAkhir;
uses crt;

var
  nama : string;
  keaktifan, tugas, ujian : real;
  nilaiAkhir : real;

begin
  clrscr;
  
  write('Masukkan Nama Mahasiswa: ');
  readln(nama);
  
  write('Masukkan Nilai Keaktifan: ');
  readln(keaktifan);
  
  write('Masukkan Nilai Tugas: ');
  readln(tugas);
  
  write('Masukkan Nilai Ujian: ');
  readln(ujian);
  
  nilaiAkhir := (keaktifan * 0.2) + (tugas * 0.35) + (ujian * 0.45);
  
  writeln;
  writeln('Nama Mahasiswa: ', nama);
  writeln('Nilai Akhir   : ', nilaiAkhir:0:2);  {0:2 = 2 angka di belakang koma}
  
  readln;
end.