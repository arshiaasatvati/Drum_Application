import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getApp(),
    );
  }
}

Widget getApp() {
  return Scaffold(
    backgroundColor: Colors.amber,
    body: SafeArea(
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/drum.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: getBody(),
      ),
    ),
  );
}

Widget getBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('h1');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('h2');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('c1');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('c2');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('k1');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound('k2');
                },
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

playSound(String soundName) {
  AudioPlayer player = AudioPlayer();
  player.setAsset('assets/assets_$soundName.wav');
  player.play();
}
