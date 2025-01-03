final class Person {
  final String? name;
  final bool? isFree;
  final List<int>? workDays;

  Person({this.name, this.isFree, this.workDays});

  Person copyWith({String? name, bool? isFree, List<int>? workDays}) {
    return Person(
      name: name ?? this.name,
      isFree: isFree ?? this.isFree,
      workDays: workDays ?? this.workDays,
    );
  }
}
