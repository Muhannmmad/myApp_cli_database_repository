import 'dart:io';

void main() {
  bool isProgramRunning = true;

  while (isProgramRunning) {
    print(
        'write L for Login   or   Write S for SignUp     or P for Profile   or   F for Feed   or   write E for Exit');

    //  user input
    String? userChoice = stdin.readLineSync();

    switch (userChoice) {
      case 'L':
        // Login
        stdout.write('Enter username: ');
        String? username = stdin.readLineSync();
        stdout.write('Enter password: ');
        String? password = stdin.readLineSync();
        print('Logging in with username: $username and password: $password');
        break;

      case 'S':
        // SignUp
        stdout.write('Enter new username: ');
        String? newUsername = stdin.readLineSync();
        stdout.write('Enter new password: ');
        String? newPassword = stdin.readLineSync();
        print(
            'Signing up with username: $newUsername and password: $newPassword');
        // Add sign-up logic and validation here
        break;

      case 'P':
        // Profile
        print('Your Profile');
        break;

      case 'F':
        // Profile
        print('See other Profiles');
        break;

      case 'E':
        // Exit
        isProgramRunning = false;
        print('Goodbye');
        break;

      default:
        print('Invalid choice');
    }
  }
}
