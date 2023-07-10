import 'package:dependency_injection/data/data_sources/local_data_source.dart';
import 'package:dependency_injection/data/data_sources/remote_data_source.dart';
import 'package:dependency_injection/data/repo_impl.dart';
import 'package:get_it/get_it.dart';

import 'domain/repo.dart';

GetIt sl = GetIt.instance;

void setupLocator() {
  //* repo
  sl.registerLazySingleton<Repo>(
      () => RepoImpl(localDataSource: sl(), remoteDataSource: sl()));

  //*data sources
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataModelImpl());
  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

  //* external
}
