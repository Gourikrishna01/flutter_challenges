import 'package:flutter/material.dart';

void main() {
  runApp(const Movie_List());
}

class Movie_List extends StatelessWidget {
  const Movie_List({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "FILMI",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
