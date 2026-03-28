class MahasiswaAktifModel {
  final String judul;
  final String isi;

  MahasiswaAktifModel({
    required this.judul,
    required this.isi,
  });

  factory MahasiswaAktifModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaAktifModel(
      judul: json['title'] ?? '',
      isi: json['body'] ?? '',
    );
  }
}