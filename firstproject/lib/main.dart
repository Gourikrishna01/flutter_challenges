import 'package:flutter/material.dart';
import 'widget/home.dart';
import 'widget/add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {'/': (context) => MyWidget(), '/add': (context) => AddUser()},
      initialRoute: '/',
    );
  }
}
