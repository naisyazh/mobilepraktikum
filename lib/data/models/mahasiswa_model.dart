class MahasiswaModel {
  final String nama;
  final String email;
  final String isi;

  MahasiswaModel({
    required this.nama,
    required this.email,
    required this.isi,
  });

  factory MahasiswaModel.fromJson(Map<String, dynamic> json) {
    return MahasiswaModel(
      nama: json['name'],
      email: json['email'],
      isi: json['body'],
    );
  }
}