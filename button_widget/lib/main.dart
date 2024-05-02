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
            "buton_Widget",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.black12,
          leading: Icon(Icons.home_max_outlined),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                    Colors.red,
                  )),
                  onPressed: () {
                    print("clicked");
                  },
                  child: Text(
                    "Text Button",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
