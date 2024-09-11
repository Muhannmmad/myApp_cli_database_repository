import '../data/database_repository.dart';
import '../data/mock_database.dart';
import 'user.dart';

void main() {
  DatabaseRepository mockDatabase = MockDatabase();

  // Sign-up user 1
  User user1 = User(
    username: "muhammad_ali",
    password: "password123",
    birthDate: "01-01-1990",
    placeOfLiving: "Frankfurt",
    emailAddress: "muhammad@example.com",
  );
  mockDatabase.addUser("01", user1);

  // Sign-up user 2
  User user2 = User(
    username: "muhammad_ali",
    password: "securepass",
    birthDate: "15-05-1995",
    placeOfLiving: "Frankfurt",
    emailAddress: "muhammad@example.com",
  );
  mockDatabase.addUser("02", user2);

  // Attempt to log in with correct credentials
  User? loggedInUser =
      mockDatabase.checkUserCredentials("muhammad_alie", "password123");

  if (loggedInUser != null) {
    print(
        "Welcome, ${loggedInUser.username}! Your email is ${loggedInUser.emailAddress}");
  }

  // Attempt to log in with incorrect credentials
  mockDatabase.checkUserCredentials("muhammad_ali", "wrongpassword");

  // List all users
  List<User> allUsers = mockDatabase.getAllUsers();
  print("All users in the system:");
  for (var user in allUsers) {
    print("${user.username}, ${user.emailAddress}");
  }

  // Remove a user
  mockDatabase.removeUser("01");

  // List all users after removal
  allUsers = mockDatabase.getAllUsers();
  print("All users in the system after removal:");
  for (var user in allUsers) {
    print("${user.username}, ${user.emailAddress}");
  }
}
