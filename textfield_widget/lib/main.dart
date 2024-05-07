import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "text_widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Text_widget_field",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
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
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "username",
                      hintText: "enter your username",
                      prefixIcon: Icon(Icons.verified_user),
                      suffixIcon: Icon(Icons.abc)),
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "username",
                      hintText: "enter your username",
                      suffixText: "mr",
                      helperText: "enter the username or email",
                      hintStyle: TextStyle(
                        color: Colors.black26,
                        fontSize: 25,
                      ),
                      labelStyle: TextStyle(color: Colors.red)),
                ),
                TextField(
                    maxLength: 10,
                    obscureText: false,
                    keyboardType: TextInputType.number),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(70),
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                    label: Text("hello"),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.blue),
                ),
                TextButton(onPressed: () {print("signin")}, child: Icon(Icons.))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
