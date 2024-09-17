import '../models/hobbies.dart';

abstract class Database {
  // Add a person to the database
  void addPerson(Person person);

  // Add a hobby to a person
  void addHobby(String person, Hobby hobby);

  // Get a person by their ID
  Person getPersonById(String id);

  // Get people who have the same hobby
  List<Person> getPeopleWithSameHobby(String hobbyName);
}
