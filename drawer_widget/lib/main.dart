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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "drawer_widget",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: Icon(
          Icons.home,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text("Gouri"),
            accountEmail: Text("gouri@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/df/5f/5b/df5f5b1b174a2b4b6026cc6c8f9395c1.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            iconColor: Colors.white,
            onTap: () {},
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            iconColor: Colors.white,
            onTap: () {},
            title: Text(
              "Dashboard",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            iconColor: Colors.white,
            onTap: () {},
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            iconColor: Colors.white,
            onTap: () {},
            title: Text(
              "Signout",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.white,
          ),
        ]),
      ),
    ));
  }
}
