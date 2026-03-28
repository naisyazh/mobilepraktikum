import 'dart:io';

void main() {
  // 1. Membuat Set dengan data awal
  Set<String> burung = {'Merpati', 'Elang', 'Kakatua'};
  print('Burung awal: $burung');

  // 2. Tambah data duplicate (tidak akan bertambah)
  burung.add('Elang');
  print('Setelah tambah duplicate (Elang): $burung');

  // 3. Menghapus data
  burung.remove('Kakatua');
  print('Setelah dihapus Kakatua: $burung');

  // 4. Cek apakah data ada
  print('Apakah ada Elang? ${burung.contains('Elang')}');

  // 5. Input dari terminal untuk hasil akhir
  print('\n--- INPUT DATA BARU ---');
  stdout.write('Masukkan data baru: ');
  String? baru = stdin.readLineSync();
  if (baru != null) {
    burung.add(baru);
    print('Data "$baru" berhasil ditambahkan!');
  }

  print('\n=== SEMUA DATA ===');
  int i = 1;
  for (var b in burung) {
    print('${i++}. $b');
  }
  print('Total data: ${burung.length}');
}