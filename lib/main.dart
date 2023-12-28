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
        body: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.brown,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.brown[600],
            ),
            Expanded(
              child: Container(
                width: 100,
                color: Colors.brown[700],
              ),
            )
          ],)
        ));
  }
}