import 'dart:io';

void main() {
  // 1. Injeksi Data Awal (Halaman 1)
  List<String> names = ['Alfa', 'beta', 'Charlie'];
  print('Names Awal: $names');

  // 2. Menambahkan Data (Halaman 1)
  names.add('Delta');
  print('Setelah ditambahkan Delta: $names');

  // 3. Mengambil Input dari Terminal (Halaman 3)
  // Membuat list kosong untuk menampung input user
  List<String> datalist = [];

  stdout.write('Masukkan jumlah data yang ingin ditambah: ');
  String? inputJml = stdin.readLineSync();

  if (inputJml != null && inputJml.isNotEmpty) {
    int count = int.parse(inputJml);

    for (int i = 0; i < count; i++) {
    stdout.write('Data ke-${i + 1}: ');
    String? data = stdin.readLineSync();
    if (data != null) datalist.add(data);
    }
  }

  // Gabungkan data injeksi dan data input user
  names.addAll(datalist);

  // 4. Menampilkan Semua Data dengan Looping (Halaman 2)
  print('\n=== SEMUA DATA ===');
  for (int i = 0; i < names.length; i++) {
  print('Index $i: ${names[i]}');
  }

  // 5. Ubah & Hapus Berdasarkan Input (Halaman 3 - poin m)
  stdout.write('\nMasukkan nomor index yang ingin dihapus: ');
  String? indexHapus = stdin.readLineSync();
  if (indexHapus != null && indexHapus.isNotEmpty) {
    int idx = int.parse(indexHapus);
    if (idx < names.length) {
      names.removeAt(idx);
      print('Data pada index $idx berhasil dihapus.');
    } else {
      print('Index tidak ditemukan!');
    }
  }

  // Menampilkan hasil akhir
  print('\nHasil Akhir: $names');
}