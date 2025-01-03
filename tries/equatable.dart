abstract class Equatable {
  List<Object?> get probs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Equatable &&
          runtimeType == other.runtimeType &&
          _equals(probs, other.probs);

  bool _equals(List<dynamic> props, List<dynamic> props2) {
    for (var i = 0; i < props.length; i++) {
      final result = identical(props[i], props2[i]);
      if (result == false) return false;
    }
    return true;
  }
}
