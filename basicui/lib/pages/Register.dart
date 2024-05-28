import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              "Registration",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            backgroundColor: Colors.green),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Register",
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("enter the username"),
                    hintText: "username",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("enter the fullname"),
                    hintText: "fullname",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("enter the password"),
                    hintText: "password",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("enter the mail"),
                    hintText: "gmail",
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Register"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
