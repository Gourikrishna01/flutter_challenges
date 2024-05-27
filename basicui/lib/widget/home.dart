import 'package:flutter/material.dart';
import '../pages/login.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Project",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("GouriKrishna"),
                accountEmail: Text("gourimadathil2001@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/002/275/847/original/male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                iconColor: Colors.white,
                title: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                iconColor: Colors.white,
                title: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.dashboard_customize),
                iconColor: Colors.white,
                title: Text(
                  "Dashbord",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
