import 'package:flutter/material.dart';

class Bar extends StatefulWidget {
  const Bar({super.key});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LinearProgressIndicator(
              value: controller.value,
            )
          ],
        ),
      ),
    );
  }
}
