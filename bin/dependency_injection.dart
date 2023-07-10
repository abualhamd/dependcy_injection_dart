import 'package:dependency_injection/domain/repo.dart';
import 'package:dependency_injection/injection_container.dart';

void main() {
  setupLocator();
  Repo repo = sl();
  // RepoImpl(
  //     //? dependency injection (constructor injection)
  //     localDataSource: LocalDataModelImpl(),
  //     remoteDataSource: RemoteDataSourceImpl());

  final users = repo.getData();
  for (final user in users) {
    print(user.name);
    repo.saveDataModel(user);
  }
}
