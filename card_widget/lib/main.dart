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
            "Card_Widget",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.green),
          ),
          centerTitle: true,
          backgroundColor: Colors.black26,
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shadowColor: Colors.black,
                elevation: 100,
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shadowColor: Colors.black,
                elevation: 100,
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shadowColor: Colors.black,
                elevation: 100,
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("first card"),
                      subtitle: Text("welcome"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("second card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shadowColor: Colors.black,
                elevation: 100,
                color: Colors.blue,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("third card"),
                      subtitle: Text("app"),
                      textColor: Colors.amber,
                      leading: Icon(
                        Icons.app_registration,
                      ),
                      iconColor: Colors.amberAccent,
                      trailing: Icon(Icons.more_horiz),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
