import 'database_repository.dart';

class InMemoryDatabase implements Database {
  final Map<String, Person> _people = {};
}

class Person {
  final String id;
  final String name;
  List<Hobby> hobbies;

  Person({required this.id, required this.name, required this.hobbies});
}

class Hobby {
  final String name;

  Hobby({required this.name});
}
