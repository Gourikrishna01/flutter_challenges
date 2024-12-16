import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "NavigationRail",
          style: TextStyle(color: Colors.green, fontSize: 20),
        ),
      ),
      body: Row(
        children: [
          NavigationRail(
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.home), label: Text("Home")),
              NavigationRailDestination(
                  icon: Icon(Icons.face), label: Text("Profile")),
              NavigationRailDestination(
                  icon: Icon(Icons.settings), label: Text("Settings")),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(
              child: Text(
                "Selected: ${["Home", "Profile", "Settings"][_selectedIndex]}",
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
