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
        child: Text(
          "hello World",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        height: 300,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(50),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.purple,
            border: Border.all(color: Colors.blueAccent, width: 5),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(5, 5), blurRadius: 20),
            ]),
      )),
    );
  }
}
