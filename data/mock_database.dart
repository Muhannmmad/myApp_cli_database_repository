import 'database_repository.dart';
import '../models/user.dart';

class MockDatabase implements DatabaseRepository {
  Map<String, User> userData = {};

  @override
  void addUser(String id, User newUser) {
    if (userData.values.any((user) => user.username == newUser.username)) {
      print('Username ${newUser.username} is already taken.');
    } else {
      userData[id] = newUser;
      print('User ${newUser.username} signed up.');
    }
  }

  @override
  User? checkUserCredentials(String username, String password) {
    for (var user in userData.values) {
      if (user.username == username && user.password == password) {
        print('Login successful for user: $username');
        return user;
      }
    }
    print('Login failed for user: $username');
    return null;
  }

  @override
  List<User> getAllUsers() {
    return userData.values.toList();
  }

  @override
  void removeUser(String id) {
    if (userData.containsKey(id)) {
      print('User ${userData[id]?.username} removed.');
      userData.remove(id);
    } else {
      print('User with ID $id not found.');
    }
  }
}
