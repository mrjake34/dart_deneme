import 'dart:isolate';

Future<void> main() async {
  final _receivePort = ReceivePort();
  final isolate = await Isolate.spawn(_isolateFunction, _receivePort.sendPort,
      debugName: 'First Isolate');
  final sender = SenderIsolate(_receivePort);
  final receiver = ReceiverIsolate(_receivePort);
  await receiver.listen();
  sender.sendNewMessage('Hello');
  print(isolate.debugName);
}

void _isolateFunction(SendPort sendPort) {
  sendPort.send('Başlangıç');
}

final class ControlIsolate {
  final ReceivePort _receivePort;
  late Isolate _isolate;
  ControlIsolate(this._receivePort);
  Future<void> spawn() async {
    _isolate = await Isolate.spawn(_isolateFunction, _receivePort.sendPort,
        debugName: 'First Isolate');
  }

  Isolate? get getIsolate => _isolate;

  void kill(SendPort port) {
    port.send(_isolate.debugName);
  }
}

final class SenderIsolate {
  final ReceivePort _receivePort;

  const SenderIsolate(this._receivePort);

  Future<void> sendNewMessage(dynamic message) async {
    await Future.delayed(Duration(seconds: 3));
    _receivePort.sendPort.send(message);
  }
}

final class ReceiverIsolate {
  final ReceivePort _receivePort;

  const ReceiverIsolate(this._receivePort);
  Future<void> listen() async {
    _receivePort.listen((message) {
      print('Isolate\'den gelen sonuç: $message');
      if (message == 'Hello') {
        print(message);
      } else {
        print('World');
      }
    });
  }
}
