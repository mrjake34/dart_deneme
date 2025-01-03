final class FactorySimple1 {
  final String? name;
  final String? school;

  FactorySimple1._({this.name, this.school});

  factory FactorySimple1.dummy() =>
      FactorySimple1._(name: 'John Doe', school: 'Dart School');

  factory FactorySimple1.empty() {
    return FactorySimple1._(name: '', school: '');
  }
}
