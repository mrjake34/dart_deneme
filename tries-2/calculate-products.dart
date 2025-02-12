double hesaplaToplamFiyat(List<Map<String, dynamic>> sepet) {
  double toplamFiyat = 0.0;

  for (var urun in sepet) {
    // Fiyatı string olarak al, binlik ayraçları kaldır
    String fiyatStr = urun['fiyat'] ?? '0';
    fiyatStr = fiyatStr.replaceAll(',', ''); // Binlik ayraçları kaldır

    double fiyat = double.tryParse(fiyatStr) ?? 0.0;
    int adet = urun['adet'] ?? 0;

    toplamFiyat += fiyat * adet;
  }

  return toplamFiyat;
}

void main() {
  List<Map<String, dynamic>> sepet = [
    {'isim': 'Ürün A', 'fiyat': "1,234.423", 'adet': 2},
    {'isim': 'Ürün B', 'fiyat': "2,567.89", 'adet': 3},
    {'isim': 'Ürün C', 'fiyat': "3,78.45", 'adet': 5},
  ];

  double toplam = hesaplaToplamFiyat(sepet);
  print("Toplam Sepet Fiyatı: ${toplam.toStringAsFixed(2)} TL");
}


