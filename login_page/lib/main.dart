import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "SIGN IN",
            style: TextStyle(
                color: Colors.amber, fontSize: 35, fontWeight: FontWeight.w100),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.person_2),
          actions: [
            IconButton(
                onPressed: () {
                  print("welcome");
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print("accounts");
                },
                icon: Icon(Icons.more_horiz))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      label: Text(
                        'enter the username',
                      ),
                      hintText: "username",
                    ),
                    keyboardType: TextInputType.name,
                    keyboardAppearance: Brightness.dark,
                    maxLength: 10,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          label: Text("enter the password"),
                          hintText: "password"),
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      maxLength: 8,),
                  SizedBox(
                      height:
                          20), // Adding space between text fields and button
                  ElevatedButton(
                    onPressed: () {
                      print("Clicked");
                    },
                    child: Text("Sign In"),
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
