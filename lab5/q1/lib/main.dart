import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: double.infinity,
      width: double.infinity,
      child: Row(
        children: [
          MyAppM(1, Colors.yellow),
          MyAppM(2, Colors.black),
          MyAppM(3, Colors.purple),
          MyAppM(4, Colors.blue),
          MyAppM(5, Colors.orange),
          MyAppM(6, Colors.red),
          MyAppM(7, Colors.green),
        ],
      ),
    ));
  }

  MyAppM(int i, Color c) {
    return Expanded(
      child: Container(
        color: c,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  final player = AudioPlayer();
                  player.play('assets/note$i.wav');
                });
              },
              child: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
