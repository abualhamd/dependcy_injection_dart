import 'package:dependency_injection/data/data_sources/local_data_source.dart';
import 'package:dependency_injection/data/data_sources/remote_data_source.dart';

import '../domain/repo.dart';
import 'models/user.dart';

class RepoImpl implements Repo {
  final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;

  RepoImpl(
      {required LocalDataSource localDataSource,
      required RemoteDataSource remoteDataSource})
      : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  List<User> getData() {
    return _remoteDataSource.getData();
  }

  @override
  void sendData({required covariant List<User> users}) {
    _remoteDataSource.sendData(users: users);
  }

  @override
  void saveDataModel(User model) {
    _localDataSource.saveDataModel(model);
  }
}
