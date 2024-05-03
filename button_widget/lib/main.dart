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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 30, color: Colors.black))),
                  onPressed: () {
                    print("clicked");
                  },
                  child: Text(
                    "Text Button",
                  )),
              TextButton.icon(
                style: ButtonStyle(
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 30))),
                onPressed: () {
                  print("clicked");
                },
                onLongPress: () {
                  print("hello");
                },
                icon: Icon(Icons.home),
                label: Text("home"),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.amber),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      minimumSize: MaterialStateProperty.all(Size(100, 100))),
                  onPressed: () {
                    print("hello");
                  },
                  child: Text("signin")),
              OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.black12, width: 10)),
                      foregroundColor: MaterialStateProperty.all(Colors.blue),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 25))),
                  onPressed: () {
                    print("welcome");
                  },
                  child: Text("sign up"))
            ],
          ),
        ),
      ),
    );
  }
}
