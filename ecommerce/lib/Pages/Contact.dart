import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("contact"),
      ),
      body: Text(
        "contact",
        style: TextStyle(color: Colors.green, fontSize: 20),
      ),
    );
  }
}
