import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstate/page1.dart';

import 'provider/providerdemo.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                        builder: (context) => Page1(),
                      ));
                },
                child: Text("Page3")),
            Text(Provider.of<Providerdemo>(context).test1),
            Provider.of<Providerdemo>(context).widget(),
          ],
        ),
      ),
    );
  }
}
