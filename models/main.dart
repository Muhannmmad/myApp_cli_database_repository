import '../data/database_repository.dart';
import '../data/mock_database.dart';
import 'user.dart';

void main() {
  // Create a mock database
  DatabaseRepository mockDatabase = MockDatabase();

  // Add users
  User user1 = User(username: 'JohnDoe', email: 'john@example.com');
  User user2 = User(username: 'JaneDoe', email: 'jane@example.com');

  mockDatabase.addUser('001', user1);
  mockDatabase.addUser('002', user2);

  // Read all user names
  List<String> userNames = mockDatabase.getAllUserNames();
  print('All users: $userNames');

  // Update a user
  User updatedUser = User(username: 'JohnDoe123', email: 'john123@example.com');
  mockDatabase.updateUser('001', updatedUser);

  // Get a specific user by ID
  User? user = mockDatabase.getUserById('001');
  if (user != null) {
    print('User 001: ${user.username}, ${user.email}');
  }

  // Delete a user
  mockDatabase.deleteUser('002');

  // Try to get a deleted user
  User? deletedUser = mockDatabase.getUserById('002');
  if (deletedUser == null) {
    print('User 002 not found.');
  }
}
