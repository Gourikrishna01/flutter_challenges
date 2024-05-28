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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("lOGIN"),
              TextField(
                decoration: InputDecoration(
                    label: Text("enter the username"), hintText: "username"),
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text("enter the Password"), hintText: "Password"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("home"))
            ],
          ),
        ),
      ),
    );
  }
}
