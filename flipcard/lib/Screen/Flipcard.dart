import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flip Card"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: customCard("Front Side"),
                back: customCard("back side"))
          ],
        ),
      ),
    );
  }

  Widget customCard(String title) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
        child: Container(
          height: 450,
          width: 300,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
