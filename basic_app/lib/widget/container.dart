import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Container(
              child: Center(
        child: Text(
          "hello World",
          style: TextStyle(fontSize: 25),
        ),
        color: Colors.cyanAccent,
        height: 200,
        width: 200,
      ))),
    );
  }
}
