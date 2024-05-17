import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Avatar",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w200),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.amber,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.cyan,
                  child: Text(
                    "hello",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                  ),
                  foregroundColor: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 90,
                child: Icon(
                  Icons.verified_user,
                  size: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('images/image1.jpeg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                  radius: 90,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.Vtxy0FjT_EfudI4cQk1kzAHaE8?rs=1&pid=ImgDetMain')),
            )
          ],
        )),
      ),
    );
  }
}
