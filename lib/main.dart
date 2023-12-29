// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["cecep","agus","sule","ladusing"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Text("my app"),
          backgroundColor: Colors.yellow[200],
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {

            }, icon: Icon(Icons.logout))
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.brown,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.brown[600],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.brown[700],
            )
          ],
          )
        )
      );
  }
}