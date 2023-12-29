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
        body: GridView.builder(
          itemCount: 64,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
          itemBuilder: (context, index) => Container(
            color: Colors.amber,
            margin: EdgeInsets.all(2),),
          )
        )
      );
  }
}