// Fonksiyon Çağırıldığı zaman bir değer almak zorunda ise zorunlu parametre kullanılır.
void zorunluParametre(String name) {
  print(name);
}

// Fonksiyon Çağırıldığı zaman bir değer almak zorunda değilse opsiyonel parametre kullanılır.
// Opsiyonel parametreler [] içine alınır.
// Opsiyonel parametrelerin varsayılan değeri null'dır.
// Çağırılken bir değer verilmesi gerekmez.
void opsiyonelParametre([String? name]) {
  print(name);
}

// Opsiyonel parametrelerin isimlendirilmiş hali
void zorunluIsimliParametre({String? name}) {
  print(name);
}

// Zorunlu ve Opsiyonel parametreler
// Zorunlu parametreler opsiyonel parametrelerden önce gelmelidir.
// Opsiyonel parametreler [] içine alınır.
void zorunluVeOpsiyonelParametre(String name, [String? surname]) {
  print(name);
}

void main(List<String> args) {
  zorunluParametre("Dart");
  opsiyonelParametre();
  opsiyonelParametre("Dart");
  zorunluIsimliParametre();
  zorunluIsimliParametre(name: "Dart");
  zorunluVeOpsiyonelParametre("Dart");
  zorunluVeOpsiyonelParametre("Dart", "Flutter");
}
