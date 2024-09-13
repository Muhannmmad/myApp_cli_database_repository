import 'dart:io'; // For reading input from the console

Map<String, Map<String, dynamic>> users = {};

// Function to display the main menu
void showMenu() {
  print("\n--- Welcome to HobbyConnect ---");
  print("1. Sign Up");
  print("2. Log In");
  print("3. Exit");

  stdout.write("Choose an option (1/2/3): ");
  String? choice = stdin.readLineSync();

  switch (choice) {
    case '1':
      signUp();
      break;
    case '2':
      logIn();
      break;
    case '3':
      exit(0);
      break;
    default:
      print("Invalid option, please try again.");
      showMenu();
  }
}

// Function for signing up a user
void signUp() {
  stdout.write("Enter a username: ");
  String? username = stdin.readLineSync();

  // Check if the username is already taken
  if (users.containsKey(username)) {
    print("Username already taken. Please choose another one.");
    return;
  }

  stdout.write("Enter a password: ");
  String? password = stdin.readLineSync();

  // Store user data
  users[username!] = {'password': password};

  print("\nAccount created successfully! You can now log in.");
  showMenu(); // Return to main menu
}

// Function for logging in a user
void logIn() {
  stdout.write("Enter your username: ");
  String? username = stdin.readLineSync();

  // Check if the user exists
  if (!users.containsKey(username)) {
    print("User does not exist. Please sign up first.");
    showMenu();
    return;
  }

  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  // Verify the password
  if (users[username]!['password'] == password) {
    print("\nLogin successful! Welcome, $username.");
  } else {
    print("Incorrect password. Please try again.");
  }
// Return to main menu after login
  showMenu();
}

void main() {
  showMenu();
  signUp();
  logIn();
}
