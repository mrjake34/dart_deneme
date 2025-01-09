import 'dart:math';

import 'model.dart';

List<List<Person>> generateShiftSchedule(
    List<Person> people, int year, int month) {
  if (people.length < 2) {
    throw ArgumentError("En az iki kişi gereklidir.");
  }

  int daysInMonth = DateTime(year, month + 1, 0).day;
  Random random = Random();

  List<List<Person>> schedule = [];

  

  for (var i = 1; i < daysInMonth; i++) {
    List<Person> selectedPeople = [];
    for (int shift = 0; shift < 2; shift++) {
      while (true) {
        Person selectedPerson = people[random.nextInt(people.length)];
        if (!selectedPeople.contains(selectedPerson)) {
          if (schedule.isEmpty) {
            selectedPeople.add(
              selectedPerson.copyWith(workDays: [i]),
            );
          } else {
            for (var v = 0; v < selectedPeople.length; v++) {
              List<int> workList = selectedPeople[v].workDays ?? [];
              workList.add(i);
              selectedPeople.add(
                selectedPerson.copyWith(workDays: workList),
              );
            }
          }
          break;
        }
      }
    }
    schedule.add(selectedPeople);
  }

  return schedule;
}

void main(List<String> args) {
  List<Person> people = [
    Person(name: "Ali"),
    Person(name: "Ayşe"),
    Person(name: "Mehmet"),
    Person(name: "Fatma"),
    Person(name: "Veli"),
    Person(name: "Zeynep"),
    Person(name: "Hüseyin"),
  ];
  int year = 2024;
  int month = 5;
  final schedule = generateShiftSchedule(people, year, month);
  for (var element in schedule) {
    print(element);
  }
}
