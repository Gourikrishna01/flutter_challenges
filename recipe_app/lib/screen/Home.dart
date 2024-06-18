import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int indexNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recipe-App",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.home),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("gouri"),
                accountEmail: Text("user@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/002/275/847/original/male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg"),
                )),
            ListTile(
              title: Text("Login"),
              leading: Icon(Icons.login),
              onTap: () {},
            ),
            ListTile(
              title: Text("message"),
              leading: Icon(Icons.message),
              onTap: () {},
            ),
            ListTile(
              title: Text("setting"),
              leading: Icon(Icons.settings),
              onTap: () {},
            )
          ],
        ),
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
            label: "dashboard",
            backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: indexNum,
        selectedItemColor: Colors.amber,
        onTap: (int value) => setState(() {
          indexNum = value;
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          spacing: 10, // Space between cards horizontally
          runSpacing: 10, // Space between cards vertically
          children: [
            for (int i = 0; i < 4; i++) // Example: Create 6 cards
              Container(
                width: (MediaQuery.of(context).size.width / 2) -
                    20, // Two cards per row with padding considered
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Fish Curry",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Image.network(
                        "https://th.bing.com/th/id/OIP.oSLHKtmncUSFE9yCpdiZDgHaFz?rs=1&pid=ImgDetMain",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("abcdefghij"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_sharp),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                          ),
                        ],
                      ),
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
