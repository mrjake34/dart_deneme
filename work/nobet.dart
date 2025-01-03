class Hemsire {
  final String isim;
  final List<String> izinGunleri;

  Hemsire(this.isim, this.izinGunleri);
}

Map<String, List<String>> setHemsireNobetleri(
  List<Hemsire> hemsireListesi,
  List<String> gunler,
) {
  Map<String, List<String>> nobetCizelgesi = {};

  for (var gun in gunler) {
    List<String> uygunHemsireler = [];
    for (var hemsire in hemsireListesi) {
      if (!hemsire.izinGunleri.contains(gun)) {
        uygunHemsireler.add(hemsire.isim);
      }
    }

    nobetCizelgesi[gun] = uygunHemsireler;
  }

  return nobetCizelgesi;
}

void main(List<String> args) {
  List<Hemsire> hemsireListesi = [
    Hemsire("Ahmet Yılmaz", ["Pazartesi-Salı"]),
    Hemsire("Ayşe Demir", []),
    Hemsire("Mehmet Kaya", ["Çarşamba-Perşembe"]),
    Hemsire("Fatma Şahin", ["Perşembe-Cuma"]),
    Hemsire("Ali Can", ["Cumartesi-Pazar"]),
    Hemsire("Zeynep Arslan", ["Pazar-Pazartesi"]),
    Hemsire("Hasan Yıldız", ["Pazartesi-Salı"]),
    Hemsire("Elif Güneş", []),
    Hemsire("Murat Aksoy", ["Salı-Çarşamba"]),
    Hemsire("Gül Akın", ["Çarşamba-Perşembe"])
  ];

  List<String> gunler = [
    'Pazartesi-Salı',
    'Çarşamba-Perşembe',
    'Cuma-Cumartesi',
    'Pazar-Pazartesi'
  ];

  final nobetCizelgesi = setHemsireNobetleri(hemsireListesi, gunler);

  for (var gun in gunler) {
    print("$gun günü uygun hemşireler: ${nobetCizelgesi[gun]}");
  }
}
