import '../models/dashboard_model.dart';

class DashboardRepository {

  DashboardModel getDashboardData() {
    return DashboardModel(
      totalMahasiswa: 1234,
      mahasiswaAktif: 1180,
      jumlahKelas: 48,
      tingkatKelulusan: 94,
    );
  }

}