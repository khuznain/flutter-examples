import 'package:flutter/material.dart';
import 'package:flutter_examples/core/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My App'), backgroundColor: Colors.blue),
        body: Center(child: Text('Hello, World!')),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
