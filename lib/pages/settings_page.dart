import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Center(child: Text("settings")),
          backgroundColor: Colors.yellow[200],
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("GO TO FIRST PAGE"),
            onPressed: () {
              Navigator.pushNamed(context, '/firstpage');
              }
              ),
            ),
    );
  }
}