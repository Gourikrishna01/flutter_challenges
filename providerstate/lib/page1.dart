import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstate/page2.dart';
import 'package:providerstate/provider/providerdemo.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page2(),
                      ));
                },
                child: Text("Page1")),
            Text(Provider.of<Providerdemo>(context).test1)
          ],
        ),
      ),
    );
  }
}
