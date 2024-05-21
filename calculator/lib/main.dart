import 'package:flutter/material.dart';
import 'widget/calculator.dart'; // Ensure this path is correct

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyWidget(), // Ensure Calculator is a widget in calculator.dart
      ),
    );
  }
}
