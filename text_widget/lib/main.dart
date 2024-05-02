import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Text widget",
              style: TextStyle(color: Colors.redAccent, fontSize: 25),
            ),
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            leading: Icon(Icons.ac_unit),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.mobile_friendly_rounded)),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
          ),
          body: Center(
            child: Text(
              "Learn Flutter",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 50,
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1,
                  wordSpacing: 20,
                  backgroundColor: Colors.amberAccent,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        offset: Offset(5, 15),
                        blurRadius: 5),
                  ]),
            ),
          )),
    );
  }
}
