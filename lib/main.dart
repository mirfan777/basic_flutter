// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:basic_flutter/pages/first_page.dart';
import 'package:basic_flutter/pages/home_page.dart';
import 'package:basic_flutter/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

void userTapped(){
  print("user tapped");
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["cecep","agus","sule","ladusing"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context) => FirstPage(),
        '/home':(context) => Home(),
        '/settings':(context) => Settings(),
      },
    );
  }
}