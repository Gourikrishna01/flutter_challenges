import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: [
            Text("hello"),
            TextField(
                decoration: InputDecoration(
              label: Text("enter the username"),
            ))
          ],
        ),
      ),
    );
  }
}
