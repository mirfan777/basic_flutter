import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _number = 0;

  void _counter(){
    setState(() {
      _number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
        children: [
          Text(_number.toString()),
          TextButton(onPressed: _counter, child: Text("counter"))
        ],
      ));
  }
}