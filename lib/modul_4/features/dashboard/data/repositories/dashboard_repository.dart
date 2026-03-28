import 'package:modul_4_am/core/constants/constants.dart';
import '../models/dashboard_model.dart';

class DashboardRepository {

  List<DashboardModel> getMenu() {

    return [

      DashboardModel(
        title: "Dosen",
        route: AppConstants.dosenRoute,
      ),

      DashboardModel(
        title: "Mahasiswa",
        route: AppConstants.mahasiswaRoute,
      ),

      DashboardModel(
        title: "Mahasiswa Aktif",
        route: AppConstants.mahasiswaAktifRoute,
      ),

      DashboardModel(
        title: "Profile",
        route: AppConstants.profileRoute,
      ),

    ];

  }

}