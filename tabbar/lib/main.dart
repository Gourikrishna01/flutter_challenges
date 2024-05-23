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
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                // Tab(
                //   text: "chats",
                // ),
                // Tab(
                //   text: "status",
                // ),
                // Tab(
                //   text: "calls",
                // )
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
                Tab(
                  text: "movies",
                ),
              ],
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple),
              isScrollable: true,
            ),
            title: Text(
              "Tab bar",
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
          body: TabBarView(
            children: [
              Icon(Icons.chat),
              Icon(Icons.query_stats),
              Icon(Icons.call),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
              Icon(Icons.chat),
            ],
          ),
        ),
      ),
    );
  }
}
