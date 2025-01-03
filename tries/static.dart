final class StaticOlan {
  static void fetch() {}
}

final class StaticOlmayan {
  void fetch() {}
}

void main(List<String> args) {
  StaticOlan.fetch();
  final staticOlamayan = StaticOlmayan();

  staticOlamayan.fetch();

  StaticOlmayan().fetch();
}
