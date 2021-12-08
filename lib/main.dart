import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void _generateNum() {
    setState(() {
      number = math.Random().nextInt(6) + 1;
      number2 = math.Random().nextInt(6) + 1;
    });
  }

  var number = 1;
  var number2 = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Dicee",
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: _generateNum,
                  child: Image.asset('images/dice$number.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: _generateNum,
                  child: Image.asset('images/dice$number2.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
