// import 'dart:isolate';

// import 'package:flutter/material.dart';
// import 'package:isolate_sample/isolates.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IsolateListener(),
//             const SpawnIsolateButton(),
//             const SenderIsolateWidget()
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SenderIsolateWidget extends StatelessWidget {
//   const SenderIsolateWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ElevatedButton(
//           onPressed: () async {
//             await SenderIsolate.sendNewMessage('Hello World');
//           },
//           child: const Text('Hello World'),
//         ),
//         ElevatedButton(
//           onPressed: () async {
//             await SenderIsolate.sendNewMessage('Selam');
//           },
//           child: const Text('Selam'),
//         ),
//       ],
//     );
//   }
// }

// class IsolateListener extends StatefulWidget {
//   IsolateListener({
//     super.key,
//   }) : receivePort = ControlIsolate.getReceivePort;
//   final ReceivePort receivePort;

//   @override
//   State<IsolateListener> createState() => _IsolateListenerState();
// }

// class _IsolateListenerState extends State<IsolateListener> {
//   String? _message;

//   Future<void> listen(ReceivePort receivePort) async {
//     receivePort.listen((message) {
//       if (_message == message) return;
//       _message = message;
//       setState(() {});
//     });
//   }

//   @override
//   void initState() {
//     listen(widget.receivePort);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       _message ?? 'No Message',
//       style: Theme.of(context).textTheme.headlineMedium,
//     );
//   }
// }

// class SpawnIsolateButton extends StatelessWidget {
//   const SpawnIsolateButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: () => ControlIsolate.spawn(), child: const Text('Spawn'));
//   }
// }
