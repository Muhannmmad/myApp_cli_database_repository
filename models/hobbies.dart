import '../data/database_repository.dart';

class InMemoryDatabase implements Database {
  final Map<String, Person> _people = {};

  @override
  void addPerson(Person person) {
    _people[person.id] = person;
  }

  @override
  void addHobby(String personId, Hobby hobby) {
    final person = _people[personId];
    if (person != null) {
      person.hobbies.add(hobby);
    }
  }

  @override
  Person getPersonById(String id) {
    final person = _people[id];
    if (person == null) {
      throw Exception('Person not found');
    }
    return person;
  }

  @override
  List<Person> getPeopleWithSameHobby(String hobbyName) {
    final List<Person> result = [];
    for (var person in _people.values) {
      for (var hobby in person.hobbies) {
        if (hobby.name == hobbyName) {
          result.add(person);
          break;
        }
      }
    }
    return result;
  }
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
