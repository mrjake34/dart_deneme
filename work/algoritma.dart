import 'dart:math';

List<String> generateShiftSchedule(List<String> people, int year, int month) {
  if (people.length < 2) {
    throw ArgumentError("En az iki kişi gereklidir.");
  }

  int daysInMonth = DateTime(year, month + 1, 0).day;
  Random random = Random();

  // Her kişinin çalışma günlerini takip etmek için bir harita oluştur
  Map<String, int> workDays = {};
  for (String person in people) {
    workDays[person] = 0;
  }

  // Sonuçları tutacak liste
  List<String> schedule = [];

  for (int day = 1; day <= daysInMonth; day++) {
    // Her vardiya için ayrı ayrı kişi seç
    List<String> selectedPeople = [];
    for (int shift = 0; shift < 1; shift++) {
      // 2 vardiya olduğu varsayılıyor
      while (true) {
        String selectedPerson = people[random.nextInt(people.length)];
        // Kişi son 3 gün içinde çalışmadıysa ve bugün başka bir vardiyada yoksa seç
        if (workDays[selectedPerson]! < 3 &&
            !selectedPeople.contains(selectedPerson)) {
          selectedPeople.add(selectedPerson);
          workDays[selectedPerson] = workDays[selectedPerson]! + 1;
          break;
        }
      }
    }

    schedule.add("$day. Gün: ${selectedPeople.join(", ")}");

    // Her 4 günde bir, çalışma günlerini sıfırla
    if (day % 4 == 0) {
      workDays.updateAll((key, value) => 0);
    }
  }

  return schedule;
}

void main(List<String> args) {
  // Örnek kullanım:
  List<String> people = [
    "Ali",
    "Ayşe",
    "Mehmet",
    "Fatma",
    "Veli",
    "Zeynep",
    "Hüseyin",
  ];
  int year = 2024;
  int month = 5;
  List<String> schedule = generateShiftSchedule(people, year, month);
  for (String daySchedule in schedule) {
    print(daySchedule);
  }
}
