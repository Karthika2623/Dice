import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(fontSize: 50.0,color: Colors.white),
          ),
          backgroundColor: Colors.brown,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftdice = 1;
  int rightdice=1;
  void changeDice(){
    setState(() {
      rightdice=Random().nextInt(6) + 1;
      leftdice=Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              onPressed: (){
               changeDice();
               // print('button1');
              },
              child: Image.asset('assets/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
              onPressed: (){
               changeDice();
              },
              child: Image.asset('assets/dice$rightdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}

