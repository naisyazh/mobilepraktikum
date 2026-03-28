import '../../data/models/dosen_model.dart';
import '../../data/repositories/dosen_repository.dart';

class DosenProvider {
  final DosenRepository repository = DosenRepository();

  List<DosenModel> getDosen() {
    return repository.getDosen();
  }
}