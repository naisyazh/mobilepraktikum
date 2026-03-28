import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/mahasiswa_model.dart';

class MahasiswaService {
  Future<List<MahasiswaModel>> fetchMahasiswa() async {
    try {
      final response = await http.get(
        Uri.parse('http://jsonplaceholder.typicode.com/comments'),
      );

      if (response.statusCode == 200) {
        List data = json.decode(response.body);
        return data.map((e) => MahasiswaModel.fromJson(e)).toList();
      } else {
        throw Exception("Gagal ambil data: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error HTTP: $e");
    }
  }
}