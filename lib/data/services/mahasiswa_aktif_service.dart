import 'package:dio/dio.dart';
import '../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifService {
  final Dio dio = Dio();

  Future<List<MahasiswaAktifModel>> fetchMahasiswaAktif() async {
    try {
      final response = await dio.get(
        'http://jsonplaceholder.typicode.com/posts',
      );

      if (response.statusCode == 200) {
        List data = response.data;
        return data.map((e) => MahasiswaAktifModel.fromJson(e)).toList();
      } else {
        throw Exception("Gagal ambil data");
      }
    } catch (e) {
      throw Exception("Error DIO: $e");
    }
  }
}