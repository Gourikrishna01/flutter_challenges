import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Card(
        child: Column(
          children: [
            Text("login"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("enter the username"),
                    hintText: "username",
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("enter the password"),
                  hintText: "password",
                  prefixIcon: Icon(Icons.password),
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("login"))
          ],
        ),
      ),
    );
  }
}
