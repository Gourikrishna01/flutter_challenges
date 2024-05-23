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
  int indexNum = 0;
  List tabwidgets = [
    Text(
      "home",
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w300),
    ),
    Text(
      "Profile",
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w300),
    ),
    Text(
      "dashboard",
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w300),
    ),
    Text(
      "settings",
      style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.w300),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "bottom",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "profile",
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Dashboard",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "settings",
                backgroundColor: Colors.indigo),
          ],
          // showSelectedLabels: false,
          showUnselectedLabels: true,
          iconSize: 30,
          currentIndex: indexNum,
          onTap: (int index) {
            setState(() {
              indexNum = index;
            });
          },
        ),
        body: Center(
          child: tabwidgets.elementAt(indexNum),
        ),
      ),
    );
  }
}
