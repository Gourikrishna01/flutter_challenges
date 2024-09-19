import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shimmer Effect App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items =
      List<String>.generate(20, (index) => "Item ${index + 1}");
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    // Simulate a loading delay
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isLoaded = true; // Set to true when data is loaded
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shimmer ListView Example")),
      body: isLoaded ? buildListView() : getShimmerEffect(),
    );
  }

  // Widget to build the actual ListView once data is loaded
  ListView buildListView() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.label),
          title: Text(items[index]),
          subtitle: Text("Subtitle for ${items[index]}"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${items[index]} clicked')),
            );
          },
        );
      },
    );
  }

  // Shimmer effect widget as a placeholder while loading
  Shimmer getShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemCount: 6, // Number of shimmer items to display
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                color: Colors.white,
              ),
              title: Container(
                width: double.infinity,
                height: 16,
                color: Colors.white,
              ),
              subtitle: Container(
                width: 150,
                height: 16,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
