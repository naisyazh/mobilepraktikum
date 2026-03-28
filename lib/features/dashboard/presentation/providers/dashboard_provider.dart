import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/dashboard_model.dart';

final dashboardProvider = Provider<List<DashboardModel>>((ref) {
  return [
    DashboardModel(
      title: "Total Mahasiswa",
      value: "1,234",
      percent: "+8.5%",
      isUp: true,
    ),
    DashboardModel(
      title: "Mahasiswa Aktif",
      value: "1,180",
      percent: "+5.2%",
      isUp: true,
    ),
    DashboardModel(
      title: "Jumlah Kelas",
      value: "48",
      percent: "-2.1%",
      isUp: false,
    ),
    DashboardModel(
      title: "Tingkat Kelulusan",
      value: "94%",
      percent: "+3.5%",
      isUp: true,
    ),
  ];
});