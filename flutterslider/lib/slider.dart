import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Flutter Slider",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Slider(
        max: 100,
        divisions: 5,
        value: _currentValue,
        onChanged: (double value) {
          setState(() {
            _currentValue = value;
          });
        },
        label: _currentValue.round().toString(),
      ),
    );
  }
}
