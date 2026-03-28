import 'package:flutter/material.dart';
import '../data/repositories/dosen_repository.dart';
import '../data/models/dosen_model.dart';

class DosenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Dosen')),
      body: FutureBuilder<List<DosenModel>>(
        future: DosenRepository().getDosen(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            final dosen = snapshot.data!;
            return ListView.builder(
              itemCount: dosen.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dosen[index].name),
                  subtitle: Text(dosen[index].email),
                );
              },
            );
          } else {
            return Center(child: Text("Error"));
          }
        },
      ),
    );
  }
}