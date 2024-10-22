import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  String panStartDetails = 'Start panning to see details';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GestureDector"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Center(
              child: GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    counter += 1;
                  });
                },
                child: Container(
                    color: Colors.red,
                    width: 200,
                    height: 400,
                    child: Text(counter.toString())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
