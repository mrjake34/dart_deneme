import 'dart:async';

Future<int> gelecektekiSayi() async {
  await Future.delayed(Duration(seconds: 1));
  return 5;
}

FutureOr<int> gelecekVeyaSimdikiSayi(bool simdi) {
  if (simdi) {
    return 10; // Doğrudan bir değer döndür
  } else {
    return gelecektekiSayi(); // Bir Future döndür
  }
}

void main() async {
  // FutureOr ile çalışmak
  var sonuc1 = gelecekVeyaSimdikiSayi(true); // 10 (int)
  var sonuc2 = await gelecekVeyaSimdikiSayi(false); // 5 (int)

  print(sonuc1);
  print(sonuc2);
}
