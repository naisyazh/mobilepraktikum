import 'package:flutter/material.dart';
import '../../services/mahasiswa_aktif_service.dart';
import '../../models/mahasiswa_aktif_model.dart';

class MahasiswaAktifPage extends StatefulWidget {
  const MahasiswaAktifPage({super.key});

  @override
  State<MahasiswaAktifPage> createState() => _MahasiswaAktifPageState();
}

class _MahasiswaAktifPageState extends State<MahasiswaAktifPage> {

  late Future<List<MahasiswaAktifModel>> data;

  @override
  void initState() {
    super.initState();
    data = MahasiswaAktifService().fetchMahasiswaAktif();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mahasiswa Aktif")),
      body: FutureBuilder<List<MahasiswaAktifModel>>(
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
                  leading: const Icon(Icons.star),
                  title: Text(m.judul),
                  subtitle: Text(m.isi),
                ),
              );
            },
          );
        },
      ),
    );
  }
}