import 'package:flutter/material.dart';
import '../../services/mahasiswa_service.dart';
import '../../models/mahasiswa_model.dart';

class MahasiswaPage extends StatefulWidget {
  const MahasiswaPage({super.key});

  @override
  State<MahasiswaPage> createState() => _MahasiswaPageState();
}

class _MahasiswaPageState extends State<MahasiswaPage> {

  late Future<List<MahasiswaModel>> data;

  @override
  void initState() {
    super.initState();
    data = MahasiswaService().fetchMahasiswa();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mahasiswa")),
      body: FutureBuilder<List<MahasiswaModel>>(
        future: data,
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("Data kosong"));
          }

          final list = snapshot.data!.take(20).toList();

          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) {
              final m = list[i];

              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(m.nama),
                  subtitle: Text("${m.email}\n${m.isi}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}