import 'package:flutter/material.dart';
import '../../models/dosen_model.dart';

class DosenWidget extends StatelessWidget {
  final DosenModel dosen;

  const DosenWidget({super.key, required this.dosen});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: const Icon(Icons.person, size: 40),
        title: Text(dosen.nama),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dosen.username),
            Text(dosen.email),
            Text(dosen.lokasi),
          ],
        ),
      ),
    );
  }
}