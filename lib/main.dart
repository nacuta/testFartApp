import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

List<String> fartList = [
  'fart-1.mp3',
  'fart-2.mp3',
  'fart-3.mp3',
  'fart-4.mp3',
  'fart-5.mp3',
];
List<String> burpList = [
  'burp-1.mp3',
  'burp-2.mp3',
  'burp-3.mp3'
];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void burpSouds() {
    final _random = new Random();
    int burpNumber = _random.nextInt(burpList.length);
    String burpSound = burpList[burpNumber];
    final player = AudioCache();
    print('Console Message Using Print $burpSound and $burpNumber');
    player.play(burpSound);
  }
  void fartSound() {
    final _random = new Random();
    int fartNumber = _random.nextInt(fartList.length);
    String randomSound = fartList[fartNumber];
    final player = AudioCache();
    print('Console Message Using Print $randomSound and $fartNumber');

    player.play(randomSound);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Image.asset(
                "assets/fartImage.jpg",
                width: 280.0,
              ),
              onTap: fartSound,
            ),
          GestureDetector(
              child: Image.asset(
                "assets/burpImage.jpg",
                width: 280.0,
              ),
              onTap: burpSouds,
            ),
          ],
        ),
      ),
    );
  }
}
