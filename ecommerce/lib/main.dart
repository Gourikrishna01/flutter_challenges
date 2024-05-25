import 'package:flutter/material.dart';
import 'package:ecommerce/widget/Ecmmerce.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Welcome to the flutter App", home: MyWidget());
  }
}
