import '../models/user.dart';

abstract class DatabaseRepository {
  // Create a new user
  void addUser(String id, User newUser);

  // Read all users
  List<String> getAllUserNames();

  // Update user information
  void updateUser(String id, User updatedUser);

  // Delete a user by ID
  void deleteUser(String id);

  // Get specific user details
  User? getUserById(String id);
}
