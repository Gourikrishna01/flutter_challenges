import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var text = "hello World";
  void changeText() {
    setState(() {
      text = "Good Morning";
    });
  }

  void changeHText() {
    setState(() {
      text = "Hello World";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "stateful widget",
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
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        //elevation//
        elevation: 10.5,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.black87, fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                changeText();
              },
              child: Text(
                "changed Text",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
          ElevatedButton(
              onPressed: () {
                changeHText();
              },
              child: Text(
                "previous button",
                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
              ))
        ],
      )),
    );
  }
}
