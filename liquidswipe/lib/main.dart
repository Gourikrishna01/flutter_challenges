import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LiquidSwipe(
            pages: pages,
            enableLoop: false,
            fullTransitionValue: 300,
            slideIconWidget: Icon(
              Icons.arrow_back_ios_new,
              size: 50,
            ),
            positionSlideIcon: 0.5,
            waveType: WaveType.liquidReveal,
          ),
        ));
  }

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        children: [Padding(padding: EdgeInsetsDirectional.only(bottom: 50))],
      ),
    ),
    Container(color: Colors.black),
    Container(color: Colors.yellow),
    Container(color: Colors.lightBlue),
    Container(color: Colors.orange)
  ];
}
