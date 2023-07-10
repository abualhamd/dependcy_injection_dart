import '../models/user.dart';

abstract class RemoteDataSource {
  List<User> getData();
  void sendData({required covariant List<User> users});
}

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  List<User> getData() {
    return [User('_name', 10)];
  }

  @override
  void sendData({required List<User> users}) {
    print('sent data');
  }
}
