import 'package:flutter/material.dart';
import 'data/presentation/pages/dosen_page.dart';
import 'data/presentation/pages/mahasiswa_page.dart';
import 'data/presentation/pages/mahasiswa_aktif_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index = 0;

  final pages = [
    DosenPage(),
    const MahasiswaPage(),
    const MahasiswaAktifPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) => setState(() => index = i),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Dosen"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "Mahasiswa"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Aktif"),
          ],
        ),
      ),
    );
  }
}