import '../models/user.dart';

abstract class LocalDataSource {
  void saveDataModel(User model);
}

class LocalDataModelImpl implements LocalDataSource {
  @override
  void saveDataModel(User model) {
    print('saved user model');
  }
}
