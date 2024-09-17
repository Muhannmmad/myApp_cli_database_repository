import 'hobbies.dart';

void main() {
  // Initialize the database
  final database = InMemoryDatabase();

  // Create some hobbies
  var hiking = Hobby(name: 'Hiking');
  var painting = Hobby(name: 'Painting');
  var football = Hobby(name: 'Football');

  // Add people to the database
  database.addPerson(Person(id: '1', name: 'AlI', hobbies: [hiking]));
  database
      .addPerson(Person(id: '2', name: 'Adel', hobbies: [painting, football]));
  database.addPerson(
      Person(id: '3', name: 'Shadi', hobbies: [hiking, painting, football]));

  // Retrieve people with the same hobby
  var hikers = database.getPeopleWithSameHobby('Hiking');
  print('People who enjoy Hiking:');
  for (var person in hikers) {
    print(person.name);
  }
}
