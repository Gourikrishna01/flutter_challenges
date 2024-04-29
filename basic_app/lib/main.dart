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
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          //leading //
          leading: Icon(Icons.home_outlined),
          //actions//
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          //elevation//
          elevation: 10.5,
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
