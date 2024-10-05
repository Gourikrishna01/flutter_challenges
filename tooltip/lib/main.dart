import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter tooltip"),
          ),
          body: Center(
              child: Tooltip(
            message: "Tool Tip Show",
            child: Text(
              "ToolTip",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.blue[300]!, Colors.blue[300]!]),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.symmetric(horizontal: 40),
            preferBelow: false,
            textStyle: TextStyle(
              fontSize: 30,
              color: Colors.deepOrangeAccent,
            ),
            showDuration: Duration(seconds: 1),
            waitDuration: Duration(seconds: 2),
            triggerMode: TooltipTriggerMode.tap,
          )),
        ));
  }
}
