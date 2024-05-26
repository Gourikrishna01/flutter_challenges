import 'package:flutter/material.dart';
import '../Pages/Product.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "E_SHOP",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined),
              label: "Profile",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.indigo,
            ),
          ],
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (int value) {
            setState(() {
              index = value;
            });
          },
        ),
        body: Column(
          children: [
            Text(
              "Categories",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 120,
                  height: 150,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag, size: 50, color: Colors.blue),
                        SizedBox(height: 10),
                        Text("Dress"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 150,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart, size: 50, color: Colors.red),
                        SizedBox(height: 10),
                        Text("Shoes"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 150,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.watch, size: 50, color: Colors.green),
                        SizedBox(height: 10),
                        Text("Accessories"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                child: Text(
                  "product",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                child: Text(
                  "Registration",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                child: Text(
                  "About",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                child: Text(
                  "Contact",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}
