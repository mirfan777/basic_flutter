import "package:basic_flutter/pages/second_page.dart";
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
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {

            }, icon: Icon(Icons.logout))
          ],
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("GO TO SECOND PAGE"),
            onPressed: () {
              Navigator.pushNamed(context, '/secondpage');
              }
              ),
            ),
    );
  }
}