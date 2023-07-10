import '../data/models/user.dart';

abstract class Repo {
  List<User> getData();
  void sendData({required covariant List<User> users});
  void saveDataModel(User model);
}
