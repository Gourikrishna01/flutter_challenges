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
          title: Text("image_widget"),
          backgroundColor: Colors.amber,
          centerTitle: true,
          //leading//
          leading: Icon(Icons.home),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  'images/image1.jpeg',
                  height: 300,
                  width: 300,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  'images/image2.jpg',
                  height: 300,
                  width: 300,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Image.network(''),
              )
            ],
          ),
        ),
      ),
    );
  }
}
