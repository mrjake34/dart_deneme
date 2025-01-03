import 'dart:isolate';

void _isolateFunction(SendPort sendPort) {
  sendPort.send('Başlangıç');
}

final class ControlIsolate {
  static final ReceivePort _receivePort = ReceivePort();

  static ReceivePort get getReceivePort => _receivePort;

  ControlIsolate();
  static Future<void> spawn() async {
    await Isolate.spawn(_isolateFunction, _receivePort.sendPort);
  }
}

final class SenderIsolate {
  static Future<void> sendNewMessage(dynamic message) async {
    await Future.delayed(const Duration(seconds: 3));
    ControlIsolate.getReceivePort.sendPort.send(message);
  }
}
