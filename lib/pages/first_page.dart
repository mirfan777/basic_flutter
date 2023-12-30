// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Center(child: Text("first page")),
          backgroundColor: Colors.yellow[200],
        ),
        drawer: Drawer(
          backgroundColor: Colors.yellow,
          child : Column(children: [
            ListTile(
              leading: Icon(
                Icons.home,
                size: 40,
              ),
              title: Text("home"),
              onTap: () => {
                Navigator.pop(context),

                Navigator.pushNamed(context, '/home')
              }
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 40,
              ),
              title: Text("settings"),
              onTap: () => {
                Navigator.pushNamed(context, '/settings')
              }
              
            )
          ],)
        ),
    );
  }
}