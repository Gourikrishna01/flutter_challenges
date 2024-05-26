import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Registration",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    label: Text(
                      "enter the username",
                    ),
                    hintText: "username",
                    prefixIcon: Icon(Icons.person))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    label: Text(
                      "enter the fullname",
                    ),
                    hintText: "fullname")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text(
                    "enter the email",
                  ),
                  hintText: "email",
                  prefixIcon: Icon(Icons.email)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
              label: Text(
                "enter the password",
              ),
              hintText: "password",
              prefixIcon: Icon(Icons.password),
            )),
          )
        ],
      ),
    );
  }
}
