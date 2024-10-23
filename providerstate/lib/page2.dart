import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstate/page3.dart';

import 'provider/providerdemo.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                        builder: (context) => Page3(),
                      ));
                },
                child: Text("Page2")),
            Text(Provider.of<Providerdemo>(context).test1),
            Provider.of<Providerdemo>(context).widget(),
          ],
        ),
      ),
    );
  }
}
