import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var text = "hello World";
  var coloricon = Colors.black;
  var iconcolor = Colors.blue;
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

  void colorchange() {
    setState(() {
      if (coloricon == Colors.black) {
        coloricon = Colors.blue;
      } else {
        coloricon = Colors.black;
      }
    });
  }

  void color() {
    setState(() {
      if (iconcolor == Colors.blue) {
        iconcolor = Colors.red;
      } else {
        iconcolor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "stateful_widget",
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
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    colorchange();
                  },
                  icon: Icon(
                    Icons.thumb_up,
                  ),
                  iconSize: 50,
                  color: coloricon),
              IconButton(
                  onPressed: () {
                    color();
                  },
                  icon: Icon(Icons.thumb_down),
                  iconSize: 50,
                  color: iconcolor),
            ],
          )
        ],
      )),
    );
  }
}
