import 'class_objek.dart';

void main() {

  // Mahasiswa aktif
  var mhs1 = MahasiswaAktif("Budi", 20, "221001");

  print("=== Mahasiswa Aktif ===");
  mhs1.tampilkan();
  print("NIM: ${mhs1.nim}");

  print("");

  // Mahasiswa alumni
  var mhs2 = MahasiswaAlumni("Andi", 23, 2023);

  print("=== Mahasiswa Alumni ===");
  mhs2.tampilkan();
  print("Tahun Lulus: ${mhs2.tahunLulus}");

  print("");

  // Dosen dengan mixin
  var dosen = Dosen();

  print("=== Aktivitas Dosen ===");
  dosen.mengajar();
  dosen.penelitian();
  dosen.administrasi();

  print("");

  // Fakultas
  var fakultas = Fakultas();

  print("=== Fakultas ===");
  fakultas.administrasi();
}