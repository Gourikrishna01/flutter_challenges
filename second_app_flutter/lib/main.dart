import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "welcome to flutter",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "row_colum",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            //leading
            leading: Icon(Icons.close_fullscreen),
            //actions
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            //elevation//
            elevation: 10.5,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
            ],
          )),
    );
  }
}
