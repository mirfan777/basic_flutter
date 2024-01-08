// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:basic_flutter/pages/counter.dart";
import "package:basic_flutter/pages/home_page.dart";
import "package:basic_flutter/pages/settings_page.dart";
import "package:flutter/material.dart";

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  final List _pages = [
    Home(),
    FirstPage(),
    Settings(),
    Counter()
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: _pages[_selectedIndex],
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Center(child: Text("first page")),
          backgroundColor: Colors.yellow[200],
        ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: 
          [BottomNavigationBarItem(
          icon: Icon(Icons.home), 
          label: "Home"),
          BottomNavigationBarItem(
          icon: Icon(Icons.person), 
          label: "Profile"),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings), 
          label: "Settings"),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings), 
          label: "Counter"),
        ]),
    );
  }
}
