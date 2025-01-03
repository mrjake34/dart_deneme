final class Araba {
  final String model;
  const Araba(this.model);
  void parkEt() => print('${this.runtimeType} park edildi');
}

final class Insan {
  const Insan(this.name);
  final String name;
  void aractanCik() => print('${this.runtimeType} $name araçtan çıktı');

  void merdivenIn() => print('${this.runtimeType} $name merdivenlerden indi');
}

final class Otopark {
  final araba = Araba('Hüseyin');
  final insan = Insan('Ayşe');

  void kapiAc() => print('${araba.runtimeType} giriş yaptı');
}

final class Otopark2 {
  late final Araba araba;
  Insan? insan;

  Otopark2(this.araba);

  set insanEkle(Insan insan) => this.insan = insan;
}

void main() {
  final otopark = Otopark();
  final otopark2 = Otopark2(Araba('Ford F150'));
  // otopark.kapiAc();

  otopark2.insanEkle = Insan('Hasan');
  otopark2.insan?.aractanCik();

  // otopark.araba.parkEt();
  // otopark.insan.aractanCik();
  // otopark.insan.merdivenIn();
}
