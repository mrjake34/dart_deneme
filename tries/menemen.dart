final class Menemen {
  List<String> icerik = [];

  Menemen(this.icerik);

  void icerikEkle(String malzeme) {
    icerik.add(malzeme);
    print('Malzeme eklendi: $malzeme');
  }

  void dogra() {
    if (icerik.isEmpty) {
      print('Malzeme ekleyin');
    }
    for (var element in icerik) {
      print('Malzeme dograndi: $element');
    }
  }

  void tencereyeYerlestir() {
    if (icerik.isEmpty) {
      print('Malzeme ekleyin');
    }
    for (var element in icerik) {
      print('Malzeme tencereye yerlestirildi: $element');
    }
  }

  void tuzEkle() {
    print('Tuz eklendi');
  }

  void karistir() {
    print('Karistirildi');
  }

  void pisir(Menemen menemen) {
    print('Menemen pişiriliyor: $menemen');
  }

  void ocaktanAl() {
    print('Menemen ocaktan alındı');
  }

  void servisYap() {
    print('Menemen servis edildi');
  }

  String toString() {
    return 'Menemen(icerik: $icerik)';
  }
}

void main(List<String> args) {
  final icerikListesi = ['domates', 'biber'];
  final menemen = Menemen(icerikListesi);
  print(menemen.icerik);
  menemen.icerikEkle('sogan');
  menemen.dogra();
  menemen.tencereyeYerlestir();
  menemen.pisir(menemen);
  menemen.tuzEkle();
  menemen.karistir();
  menemen.icerikEkle('yumurta');
  menemen.karistir();
  menemen.pisir(menemen);
  menemen.ocaktanAl();
  menemen.servisYap();
}
