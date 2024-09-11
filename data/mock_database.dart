import 'database_repository.dart';
import '../models/user.dart';

class MockDatabase implements DatabaseRepository {
  // A map to store user data with IDs as keys
  Map<String, User> userData = {};

  @override
  void addUser(String id, User newUser) {
    userData[id] = newUser;
    print('User ${newUser.username} added.');
  }

  @override
  List<String> getAllUserNames() {
    List<String> allUserNames = [];
    userData.forEach((key, user) {
      allUserNames.add(user.username);
    });
    return allUserNames;
  }

  @override
  void updateUser(String id, User updatedUser) {
    if (userData.containsKey(id)) {
      userData[id] = updatedUser;
      print('User ${id} updated.');
    } else {
      print('User with ID $id not found.');
    }
  }

  @override
  void deleteUser(String id) {
    if (userData.containsKey(id)) {
      userData.remove(id);
      print('User $id deleted.');
    } else {
      print('User with ID $id not found.');
    }
  }

  @override
  User? getUserById(String id) {
    if (userData.containsKey(id)) {
      return userData[id];
    } else {
      print('User with ID $id not found.');
      return null;
    }
  }
}
