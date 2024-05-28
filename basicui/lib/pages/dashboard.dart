import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Center(
            child: Column(
          children: [
            Text("hello"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("home"))
          ],
        )),
      ),
    );
  }
}
