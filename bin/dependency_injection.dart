import 'package:dependency_injection/data/data_sources/local_data_source.dart';
import 'package:dependency_injection/data/data_sources/remote_data_source.dart';
import 'package:dependency_injection/data/repo_impl.dart';
import 'package:dependency_injection/domain/repo.dart';

void main() {
  Repo repo = RepoImpl(
      //? dependency injection (constructor injection)
      localDataSource: LocalDataModelImpl(),
      remoteDataSource: RemoteDataSourceImpl());

  final users = repo.getData();
  for (final user in users) {
    print(user.name);
    repo.saveDataModel(user);
  }
}
