import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: RollingDice(),
      ),
    ),
  );
}


class RollingDice extends StatefulWidget {
  @override
  _RollingDiceState createState() => _RollingDiceState();
}

class _RollingDiceState extends State<RollingDice> {

  var leftDiceNumber = 5;
  var rightDiceNumber =2;
  var rng = new Random();
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: (){
                setState(() {
                  leftDiceNumber = rng.nextInt(6)+1;
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                setState(() {
                  rightDiceNumber = rng.nextInt(6)+1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

