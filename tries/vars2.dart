void main() {
  // final ile sadece bir kez değer atanabilir. Sonrasında yeniden değer atanamaz.
  // herhangi bir tip belirtilmezse, tipi belirtilen değere göre atanır.
  final i = 10;
  //
  // late ile değişkenin değeri daha sonra atanabilir.
  // late kullanırken tip belirtilmezse tip dynamic olur.
  late final j;
  // sadece bir kez değer atanabilir.
  // değer atanmış olmasına rağmen dynamic olarak kalır, bu yüzden tip belirtilmelidir.
  // Örneğin: late final String j;
  j = '10';

  // const ile final arasındaki farklar:
  // const ile tanımlanan değişkenler compile time'da(Derleme zamanında) değer alır.
  // final ile tanımlanan değişkenler runtime'da(App çalıştırılma zamanında) değer alır.
  // const tanımlanırken bir değer atanmalıdır, sınıfın yapıcı(constructor) içerisinde değer verilemez.
  // final tanımlanırken bir değer atanabilir, sınıfın yapıcı(constructor) içerisinde değer verilebilir.

}

final class NewClass {
  // Bu değişkenin değerleri sınıfın bir kopyası(instance) oluşturulduğunda belirlenir.
  // Bu yüzden final değişkenlerin değerleri sınıfın yapıcı(constructor) içerisinde belirlenmelidir.
  final String name;
  // Bu değişkenin değerleri sınıfın bir kopyası(instance) oluşturulduğunda belirlenemez.
  // Bu yüzden age değeri önceden belirlenmelidir.
  static const int age = 10;

  const NewClass(this.name);
}
