import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
      ),
      body: Text(
        "hello About",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
