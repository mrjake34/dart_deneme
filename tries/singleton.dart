final class SingletonOne {
  SingletonOne._();

  static final SingletonOne _instance = SingletonOne._();

  static SingletonOne get instance => _instance;
}

final class SingletonTwo {
  SingletonTwo._();

  static SingletonTwo? _instance;
  static SingletonTwo get instance {
    _instance ??= SingletonTwo._();
    return _instance!;
  }
}

final class SingletonThree {
  SingletonThree._();

  static SingletonThree? _instance;

  static SingletonThree get instance => _instance!;

  static void init() {
    _instance ??= SingletonThree._();
  }
}

final class SingletonFour {
  SingletonFour._() {
    _data = null;
  }

  String? _data;

  static final SingletonFour _instance = SingletonFour._();

  static SingletonFour get instance => _instance;

  factory SingletonFour(String data) {
    _instance._data = data;
    return _instance;
  }

  String? get data => _data;
}
