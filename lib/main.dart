// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(25)
            ),
            padding: EdgeInsets.all(25),
            child: Icon(
              Icons.access_alarm,
              color: Colors.deepOrange,
              size: 41,
            )
        )),
      ),
    );
  }
}