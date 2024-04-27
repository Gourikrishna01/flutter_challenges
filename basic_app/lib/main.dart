import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to the flutter App",
      home: Scaffold(
        //App bar
        appBar: AppBar(
          title: Text(
            'Flutter',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home_outlined),
        ),
        body: Center(
          child: Text(
            "hello",
            style: TextStyle(fontSize: 50, color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
