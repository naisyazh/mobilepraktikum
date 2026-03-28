import '../../data/models/dashboard_model.dart';
import '../../data/repositories/dashboard_repository.dart';

class DashboardProvider {
  final DashboardRepository repository = DashboardRepository();

  List<DashboardModel> getMenus() {
    return repository.getMenu();
  }
}