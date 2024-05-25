import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? gender;
  String? status;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Radio Button",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w100),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "select your gender",
                      style: TextStyle(fontSize: 30),
                    ),
                    ListTile(
                      title: Text("Male"),
                      leading: Radio(
                          value: "male",
                          groupValue: gender,
                          onChanged: (String? value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: Text("female"),
                      leading: Radio(
                          value: "female",
                          groupValue: gender,
                          onChanged: (String? value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                    ),
                    ListTile(
                      title: Text("other"),
                      leading: Radio(
                          value: "other",
                          groupValue: gender,
                          onChanged: (String? value) {
                            setState(() {
                              gender = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Column(
              children: [
                Text(
                  "Material Status",
                  style: TextStyle(fontSize: 20),
                ),
                RadioListTile(
                    title: Text("married"),
                    value: "married",
                    groupValue: status,
                    onChanged: (String? val) {
                      setState(() {
                        status = val;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.red,
                    title: Text("unmarried"),
                    value: "unmarried",
                    groupValue: status,
                    onChanged: (String? val) {
                      setState(() {
                        status = val;
                      });
                    })
              ],
            ))
          ],
        ),
      ),
    );
  }
}
