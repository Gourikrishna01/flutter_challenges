import 'package:flutter/material.dart';
import '../pages/login.dart';
import '../pages/Register.dart';
import '../pages/dashboard.dart';
import '../pages/search.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var indexnum = 0;
  List Tabwidgets = [
    Text(
      "home",
      style: TextStyle(color: Colors.black, fontSize: 30),
    ),
    Text(
      "Dashboard",
      style: TextStyle(color: Colors.black, fontSize: 30),
    ),
    Text(
      "Profile",
      style: TextStyle(color: Colors.black, fontSize: 30),
    ),
    Text(
      "Settings",
      style: TextStyle(color: Colors.black, fontSize: 30),
    ),
  ];
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
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                },
                icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.indigo,
            ),
          ],
          currentIndex: indexnum,
          onTap: (int index) {
            setState(() {
              indexnum = index;
            });
          },
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Tabwidgets.elementAt(indexnum),
        ),
      ),
    );
  }
}
