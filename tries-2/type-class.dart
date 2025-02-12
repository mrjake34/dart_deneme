final class TryToType<T> {
  TryToType(this.object) {
    // sınıf çağırıldığında girilen değerin tipini alır
    // [_type] değişkenine [Type] tipinde atar
    _type = object.runtimeType;
    // T boş bırakılırsa dynamic olarak kabul eder
    // T tipi girilmeden kullanılırsa hata verir
    assert(T != dynamic, 'T must be specified');
  }

  // Objenin kendisini tutar
  final Object object;

  // Objenin tipini tutar
  Type? _type;

  // Tipin adını döndürür
  String getTypeName() => 'TryToType<${_type?.toString() ?? 'Unknown'}>';

  // Tipin sınıf çağırılda verilen tip ile aynı olup olmadığını kontrol eder
  bool typeIsTrue() => _type == T;
}

void main() {
  final tryToType = TryToType<int>('Hello');
  // verilen tip int fakat string tipinde bir değer girildi
  print(tryToType.getTypeName());
  print(tryToType.typeIsTrue());
  // sonuç: false

  final tryToType2 = TryToType<String>('Hello');
  // verilen tip String ve string tipinde bir değer girildi
  print(tryToType2.getTypeName());
  print(tryToType2.typeIsTrue());
  // sonuç: true

  final tryToType3 = TryToType<Car>('Hello');
  // verilen tip Car fakat string tipinde bir değer girildi
  print(tryToType3.getTypeName());
  print(tryToType3.typeIsTrue());
  // sonuç: false

  final tryToType4 = TryToType<Car>(Car());
  // verilen tip Car fakat Car tipinde bir değer girildi
  print(tryToType4.getTypeName());
  print(tryToType4.typeIsTrue());
  // sonuç: true
}

final class Car {}
