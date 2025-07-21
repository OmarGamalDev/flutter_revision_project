import 'package:flutter/material.dart';
import 'package:flutter_revision_project/Basketball%20Points%20Counter%20App/backetball_counter_view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BacketballCounterView(),
    );
  }
}
