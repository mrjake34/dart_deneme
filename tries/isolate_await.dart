import 'dart:async';
import 'dart:isolate';

/// Concurrency - Eşzamanlılık

Future<void> main() async {
  final resp = await tryToIsolate(process: () => calculate1());
  print(resp);

  final resp2 = await Isolate.run(() => calculate2());
  print(resp2);
}

Future<int> tryToIsolate({
  Future<int> Function()? process,
}) async {
  if (process == null) return 0;
  return await Isolate.run(() => process());
}

Future<int> calculate1() async {
  await Future.delayed(Duration(seconds: 1));
  return 10 + 10;
}

int calculate2() {
  return 5 - 2;
}
