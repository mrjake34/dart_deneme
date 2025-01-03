import 'dart:isolate';

void main() async {
  // Birinci isolate başlatılıyor
  // final firstIsolate = await Isolate.spawn(isolateFunction, 'Isolate 1');

  String val = 'Hello';

  // İkinci isolate başlatılıyor
  final secondIsolate = await Isolate.spawn(isolateFunction, val);

  // Ana isolate'den birinci isolate'e bir mesaj gönderiliyor
  // final ReceivePort firstIsolateReceivePort = ReceivePort();
  // firstIsolate.controlPort.send(firstIsolateReceivePort.sendPort);

  // Ana isolate'den ikinci isolate'e bir mesaj gönderiliyor
  final ReceivePort secondIsolateReceivePort = ReceivePort();
  secondIsolate.controlPort.send(secondIsolateReceivePort.sendPort);

  void changeVal() async {
    await Future.delayed(Duration(seconds: 3));
    val = 'World';
    secondIsolate.controlPort.send(val);
  }

  changeVal();

  // İlk isolate'den gelen mesajı dinleme
  // firstIsolateReceivePort.listen((message) {
  //   print('Message from Isolate 1: $message');
  // });

  // İkinci isolate'den gelen mesajı dinleme
  secondIsolateReceivePort.listen((message) {
    print('Message from Isolate 2: $message');
  });
}

void isolateFunction(String message) {
  print('Isolate received: ${message}');
}
