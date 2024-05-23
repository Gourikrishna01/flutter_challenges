import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  int total = 0;
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
          "Floating_widget",
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
          IconButton(onPressed: () {}, icon: Icon(Icons.home))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "dashboard",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.red),
        ],
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   label: Text("share"),
      //   icon: Icon(Icons.share),
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.green,
      // ),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              total++;
            });
          },
          tooltip: "share",
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
          child: Icon(Icons.add)),
      body: Center(
          child: Text(
        "$total",
        style: TextStyle(fontSize: 40),
      )),
    ));
  }
}
