import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: SafeArea(
          child: Wrap(
            children: [
              Container(
                color: Colors.red,
                height: 200,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: 100,
              ),
              Container(
                color: Colors.black,
                height: 200,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 200,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple,
                  height: 200,
                  width: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
