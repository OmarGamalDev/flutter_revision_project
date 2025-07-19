import 'package:flutter/material.dart';

class FlutterBasics extends StatelessWidget {
  const FlutterBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
        child: Text("Hello World",
        style: TextStyle(
        color: Colors.red,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.amber,
      ),
      ),)
    );
  }
}