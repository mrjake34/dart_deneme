/// Nesne
class Person {
  final String name;

  Person(this.name);
}

/// Sınıf
class Service {
  String url = 'https://';

  void fetch() {
    print(this.url);
  }
}

/// Kalıtım
abstract class Vehicle {
  String? name;
}

class Car implements Vehicle {
  @override
  String? name;
}

/// Polimorfizm
abstract final class Steel {
  void isle();
}

final class Sword extends Steel {
  @override
  void isle() {
    print('Çekil Kılıç işlendi');
  }
}

final class Dagger extends Steel {
  @override
  void isle() {
    print('Çekil Bıçak işlendi');
  }
}

/// Kapsamlama
class PopupManager {
  String? _popupModel;

  void openPopup(String platform) {
    _setPopupModel(platform);
    print(_popupModel);
  }

  void _setPopupModel(String platform) {
    if (platform == 'IOS') {
      _popupModel = 'Cupertino';
    } else {
      _popupModel = 'Material';
    }
  }
}
