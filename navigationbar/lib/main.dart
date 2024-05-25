import 'package:flutter/material.dart';
import 'package:navigationbar/widget/Navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Welcome to the flutter App", home: MyWidget());
  }
}
