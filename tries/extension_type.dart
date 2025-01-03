final class MacOS {
  final int release;

  MacOS(this.release);

  int calculate() {
    return _calculateYear(this.release).getReleaseTime;
  }
}

final class Windows {
  final int release;

  Windows(this.release);

  int calculate() {
    return _calculateYear(this.release).getReleaseTime;
  }
}

extension type const _calculateYear(int s) {
  int get getReleaseTime => 2024 - s;
}

void main() {
  final macOS = MacOS(2001);
  final windows = Windows(1985);

  print(macOS.release);
  print(macOS.calculate());
  macOS.startOS();
  macOS.close();

  print(windows.release);
  print(windows.calculate());

  final String name = 'Dart';

  print(name.getFirstChar());
}

extension on MacOS {
  void startOS() => print('${this.runtimeType} Starting');
}

extension MacOSExtension on MacOS {
  void close() => print('${this.runtimeType} closed');
}

extension on String {
  String getFirstChar() => this.split('').first;
}
