import '../models/user.dart';

abstract class DatabaseRepository {
  // Sign-up (Create)
  void addUser(String id, User newUser);

  // Log-in (Read)
  User? checkUserCredentials(String username, String password);

  // List all users (for debugging purposes)
  List<User> getAllUsers();

  // Delete user
  void removeUser(String id);
}
