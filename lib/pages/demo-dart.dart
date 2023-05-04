// Class Person avecune façon de créer un constructeur
class Person {
  String? firstname;
  String? lastname;

  // Constructeur manière 1
  /*
  Person(double note){
    this.note = note;
  }
  */

  // Constructeur manière 2
  Person(this.firstname, this.lastname);

  // Constructeur manière 3
  // Avec des paramètre optionnel
  // Person({this.firstname, this.lastname});
}

// fonctions/méthode
void maFunction(String test) {}

int myFunctionInt() {
  return 42;
}

void main() {
  // Opérateur "Elvis" == nullable
  Person? person1 = null;

  // Verif nullité
  print(person1?.firstname);

  // Assert == catch => crash
  print(person1!.firstname);
}

void test1() {
  print("Test");

  // Instancier une personne
  Person person1 = Person("Peter", "PARCOEUR");
  Person person2 = Person("Jean", "NAIMAR");

  // Avant modification
  print("--Avant modification--");
  print(person1.firstname);
  print(person2.firstname);

  person2 = person1;

  // Après assignation
  print("--Après assignation--");
  print(person1.firstname);
  print(person2.firstname);

  person1.lastname = "Toto";

  // Après modofication d'une personne
  print("--Après modification--");
  print(person1.firstname);
  print(person2.firstname);
}

void test2() {
  // Création d'un tableau avec instanciation de person

  Person personToCopy = Person("", "");

  List<Person> persons = [
    Person("Peter", "PARCOEUR"),
    Person("Jean", "NAIMAR"),
    Person("Marie", "MOI"),
    Person("Isaac", "ENI"),
  ];

  /* // Je parcours la liste de personnes
  for(Person person in persons){
    print(person.firstname);
  }*/
  print("--Avant modification--");
  for (var i = 0; i < persons.length; i++) {
    print(persons[i].firstname);
    persons[i] = personToCopy;
  }

  personToCopy.firstname = "cassetout";

  print("--Après modification--");
  for (Person person in persons) {
    print(person.firstname);
  }
}
