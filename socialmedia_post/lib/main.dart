import 'package:flutter/material.dart';

void main() {
  runApp(const socialmedia());
}

class socialmedia extends StatelessWidget {
  const socialmedia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'POSTS',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home_max_sharp),
          actions: [
            IconButton(
                onPressed: () {
                  print("search");
                },
                icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30), right: Radius.circular(30)),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Flower"),
                    subtitle: Text("23 M AGO"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/image1.jpeg',
                      ),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(" Good Morning"),
                  ),
                  Image.network(
                      "https://th.bing.com/th/id/OIP.h0AO1WC7IouM4emLSWQFAwHaHa?rs=1&pid=ImgDetMain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            print("liked");
                          },
                          icon: Icon(Icons.thumb_up)),
                      IconButton(
                          onPressed: () {
                            print("disliked");
                          },
                          icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Flower"),
                    subtitle: Text("23 M AGO"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/image1.jpeg',
                      ),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(" Good Morning.....!"),
                  ),
                  Image.network(
                      "https://th.bing.com/th/id/OIP.9BmwkTFwnBDL8aHRwiRkzwHaJ8?w=626&h=840&rs=1&pid=ImgDetMain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            print("liked");
                          },
                          icon: Icon(Icons.thumb_up)),
                      IconButton(
                          onPressed: () {
                            print("disliked");
                          },
                          icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("beautiful"),
                    subtitle: Text("10 M AGO"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/image2.jpg',
                      ),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                  ListTile(
                    title: Text(" Good Morning.....!"),
                  ),
                  Image.network(
                      "https://th.bing.com/th/id/OIP.9BmwkTFwnBDL8aHRwiRkzwHaJ8?w=626&h=840&rs=1&pid=ImgDetMain"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            print("liked");
                          },
                          icon: Icon(Icons.thumb_up)),
                      IconButton(
                          onPressed: () {
                            print("disliked");
                          },
                          icon: Icon(Icons.thumb_down))
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
