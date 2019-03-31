import 'package:flutter/material.dart';
import 'dart:math';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //This is method is called when FirstScreen() is called
    return Material(
        color: Colors.lightGreen,
        child: Center(
            child: Text(generateLuckyNumber(),
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 40.5))));
  }

  String generateLuckyNumber() => "Your lucky number is ${Random().nextInt(10)}";
}