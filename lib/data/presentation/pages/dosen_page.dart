import 'package:flutter/material.dart';
import '../../repositories/dosen_repository.dart';
import '../widgets/dosen_widget.dart';

class DosenPage extends StatelessWidget {
  DosenPage({super.key});

  final repo = DosenRepository();

  @override
  Widget build(BuildContext context) {
    final data = repo.getDosen();

    return Scaffold(
      appBar: AppBar(title: const Text("Dosen")),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, i) {
          return DosenWidget(dosen: data[i]);
        },
      ),
    );
  }
}