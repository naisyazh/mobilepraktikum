import 'dart:io';

void main() {
  // Contoh Input Multiple Mahasiswa
  List<Map<String, dynamic>> listMahasiswa = [];

  stdout.write('Masukkan jumlah mahasiswa: ');
  int jml = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jml; i++) {
    print('\nMahasiswa ke-${i + 1}');
    stdout.write('Masukkan NIM: ');
    String? nim = stdin.readLineSync();
    stdout.write('Masukkan Nama: ');
    String? nama = stdin.readLineSync();
    stdout.write('Masukkan Jurusan: ');
    String? jurusan = stdin.readLineSync();
    stdout.write('Masukkan IPK: ');
    double ipk = double.parse(stdin.readLineSync()!);

    listMahasiswa.add({
      'nim': nim,
      'nama': nama,
      'jurusan': jurusan,
      'ipk': ipk,
    });
  }

  print('\n=== DATA MAHASISWA ===');
  for (var mhs in listMahasiswa) {
    print(mhs);
  }
}